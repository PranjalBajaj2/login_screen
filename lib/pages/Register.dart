import 'package:flutter/material.dart';

class Regiter extends StatefulWidget {

  @override
  _register createState() => _register();

}
class _register extends State<Regiter>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('register.png')),
        ),
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 320,right: 220),
                  child: Center(
                    child: Text(
                        'Create\nAccount',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 33,
                      ),

                    ),

                  ),

                ),
                SingleChildScrollView(
                  child: Padding(padding: EdgeInsets.only(top: 200),
                    child:Center(
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
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Color(0xC1EDB4F4))
                                  ),
                                hintText: 'Name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                              ),
                            ),
                            const SizedBox(height: 20,),
                            TextField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Color(0xC1EDB4F4))
                                  ),
                                  hintText: 'Email',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )
                              ),
                            ),
                            const SizedBox(height: 20,),
                            TextField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Color(0xC1EDB4F4))
                                  ),
                                  hintText: 'Password',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )
                              ),
                            ),
                            const SizedBox(height: 40,),
                            Row(
                              children: [
                                Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w600

                                  ),
                                ),
                                const SizedBox(width: 10,),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Color(0xC1EDB4F4),
                                  child: IconButton(
                                      onPressed: (){
                                        Navigator.pushNamed(context, 'login');
                                      }, icon: Icon(Icons.arrow_forward)),
                                )
                              ],
                            ),
                            const SizedBox(height: 40,),
                            Row(
                              children: [
                                TextButton(onPressed: (){
                                  Navigator.pushNamed(context, 'login');
                                }, child:Text(
                                  'Sign In',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 18,
                                  ),
                                ))
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
            )
      ),
      );

  }

}