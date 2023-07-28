import 'package:flutter/material.dart';
// import 'package:healthapp/signup.dart';
import 'package:healthapp/datatype.dart';
import 'package:healthapp/signup.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var changeObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health App'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Image.asset('assets/logo.png', scale: 2.5),
          ),
          SizedBox(height: 20),
          Text(
            'Login',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
              padding: EdgeInsets.symmetric(
                horizontal: 43.0, vertical: 8.0,
              ),
              child:Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.blueGrey.shade100,
                        filled: true,
                        hintText: "Username",
                        prefixIcon: Align(
                          heightFactor: 1,
                          widthFactor: 1,
                          child:Icon(
                              Icons.person
                          ) ,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)
                        )
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.blueGrey.shade100,
                        filled: true,
                        hintText: "Password",
                        prefixIcon: Align(
                          heightFactor: 0.1,
                          widthFactor: 0.1,
                          child:Icon(
                              Icons.lock
                          ) ,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: (){
                            setState(() {
                              changeObscureText = !changeObscureText;
                            });
                          },
                          child: Align(
                            heightFactor: 1,
                            widthFactor: 1,
                            child: Icon(
                              Icons.remove_red_eye
                            ),
                          ),
                        ),

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)
                        )
                    ),
                  ),

                  SizedBox(
                    height: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forget Password ?',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return DashBoard();
                      },),);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8.0),
                        child: Center(child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                      ),
                      height: 50,
                      width: 200,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account ?'),
                      SizedBox(
                        width: 7,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return SignupPage();
                          },),);
                        },
                        child: Text(
                            'Sign Up',
                            style:TextStyle(
                              color: Colors.blue,
                            )
                        ),
                      ),
                    ],
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}