import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.0, vertical: 8.0),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
        child: Column(
          children: [
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Namaste, Nitesh',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Welcome to Nepal Police App. Your Comprehensive tool for modern policing.',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset('assets/Group1.png', scale: 3,),
                    SizedBox(height: 20,),
                    Text('Report COVID 19'),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/Group2.png', scale: 3,),
                    SizedBox(height: 20,),
                    Text('Report Incident'),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/Group9.png', scale: 3,),
                    SizedBox(height: 20,),
                    Text('Emergency Num.'),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset('assets/Group3.png', scale: 3,),
                    SizedBox(height: 20,),
                    Text('News'),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/group.png', scale: 3,),
                    SizedBox(height: 20,),
                    Text('Notice'),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/Group4.png', scale: 3,),
                    SizedBox(height: 20,),
                    Text('FM'),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset('assets/Group5.png', scale: 3,),
                    SizedBox(height: 20,),
                    Text('Stations Nearby'),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/Group6.png', scale: 3,),
                    SizedBox(height: 20,),
                    Text('e-Complaint'),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/Group7.png', scale: 3,),
                    SizedBox(height: 20,),
                    Text('Clearance Report'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );

  }
}
