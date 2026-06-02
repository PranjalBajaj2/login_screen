import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _login createState() => _login();

}
class _login extends State<Login>{
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
                padding: EdgeInsets.only(right: 200,bottom: 120),
                child: Center(
                  child: Text("Welcome\nBack!",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 33,

                    ),),
                )

              ),
              SingleChildScrollView(
                child:  Padding(
                  padding: const EdgeInsets.only(top: 300),
                     child: Center(
                       child: ConstrainedBox(
                         constraints: const BoxConstraints(
                           maxWidth: 400,
                         ),
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 20),
                           child: Column(
                             children: [
                               TextField(
                                 decoration: InputDecoration(
                                   hintText: 'Email',
                                   border: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                 ),
                               ),

                               const SizedBox(height: 15),

                               TextField(
                                 obscureText: true,
                                 decoration: InputDecoration(
                                   hintText: 'Password',
                                   border: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                 ),
                               ),
                               const SizedBox(height: 30),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text('Sign In',
                                   style: TextStyle(
                                     fontSize: 21,
                                     fontWeight: FontWeight.w700
                                   ),),
                                   CircleAvatar(
                                     //radius: 10,
                                     backgroundColor: Color(0xC1EDB4F4),
                                     child: IconButton(onPressed: (){},
                                         icon: Icon(Icons.arrow_forward)),
                                   )
                                 ],
                               ),
                               const SizedBox(height: 30),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   TextButton(
                                       onPressed: (){
                                         Navigator.pushNamed(context, 'register');
                                       },
                                       child: Text('Sign Up',
                                       style: TextStyle(
                                         decoration: TextDecoration.underline,
                                         fontSize: 18,

                                       ),)
                                   ),
                                   TextButton(
                                       onPressed: (){},
                                       child: Text('Forget Password',
                                         style: TextStyle(
                                           decoration: TextDecoration.underline,
                                           fontSize: 18,

                                         ),))
                                 ],
                               )
                             ],
                           ),
                         ),
                       ),
                     ),
                  ),

                ),
              ],
            ),
          ),
        ),
      );
    }

  }