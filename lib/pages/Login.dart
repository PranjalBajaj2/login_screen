import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _form createState() => _form();

}
class _form extends State<Login>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('login.png'),

          ),

        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 450,top: 200),
                child: Text("Welcome\nBack!",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 33,

                  ),),

              ),
              SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(left: 470,top: 300,right: 470),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextField(
                          decoration: InputDecoration(
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                        )
                      ],

                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }

}