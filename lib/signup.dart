import 'package:flutter/material.dart';
import 'package:healthapp/datatype.dart';


class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _StateSignupPage();
}

class _StateSignupPage extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: (
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                )
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 38.0, vertical: 8.0,
            ),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.blueGrey.shade100,
                  filled: true,
                  hintText: "Username",
                  prefixIcon: Align(
                    heightFactor: 1,
                    widthFactor: 1,
                    child: Icon(
                        Icons.person
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)
                  )
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 38.0, vertical: 8.0,
            ),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.blueGrey.shade100,
                  filled: true,
                  hintText: "Email",
                  prefixIcon: Align(
                    heightFactor: 1,
                    widthFactor: 1,
                    child: Icon(
                        Icons.mail
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)
                  )
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 38.0, vertical: 8.0,
            ),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.blueGrey.shade100,
                  filled: true,
                  hintText: "Phone no.",
                  prefixIcon: Align(
                    heightFactor: 1,
                    widthFactor: 1,
                    child: Icon(
                        Icons.phone
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)
                  )
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 38.0, vertical: 8.0,
            ),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.blueGrey.shade100,
                  filled: true,
                  hintText: "Password",
                  prefixIcon: Align(
                    heightFactor: 1,
                    widthFactor: 1,
                    child: Icon(
                        Icons.lock
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)
                  )
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 38.0, vertical: 8.0,
            ),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.blueGrey.shade100,
                  filled: true,
                  hintText: "Confirm Password",
                  prefixIcon: Align(
                    heightFactor: 1,
                    widthFactor: 1,
                    child: Icon(
                        Icons.lock
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)
                  )
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DashBoard();
              },
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8.0),
                child: Center(child: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
              ),
              height: 50,
              width: 200,
            ),
          ),
          SizedBox(
            height: 10,
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
                  // Add the logic for navigating to the login page here
                },
                child: Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.blue,
                    )
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
