import 'package:flutter/material.dart';

class sgnpg extends StatefulWidget {
  const sgnpg({Key? key}) : super(key: key);

  @override
  State<sgnpg> createState() => _sgnpgState();
}

class _sgnpgState extends State<sgnpg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[50],
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body:Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left:90,top:70),
                child: Text('We are excited \n   to have you!',style: TextStyle(fontSize: 30)),
              ),
              SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.25,
                      left:35,
                      right:35,
                    ),
                    child: Column(
                      children: [
                        Text('Signup details',style: TextStyle(fontSize:25,decoration: TextDecoration.underline)),
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.grey[100],
                            filled: true,
                            hintText: 'Username',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100)
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.grey[100],
                            filled: true,
                            hintText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100)
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            fillColor: Colors.grey[100],
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100)
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            fillColor: Colors.grey[100],
                            filled: true,
                            hintText: 'Confirm Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100)
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        FlatButton(
                          color: Colors.pink[100],
                          child: Text('Signup',style: TextStyle(fontSize:20)),
                          onPressed: () {
                            Navigator.pushNamed(context, 'homepage');
                          },
                        ),
                        SizedBox(height: 20),
                      ],
                    )
                ),
              ),
              Container(
                  padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.65,top:MediaQuery.of(context).size.height*0.94),
                  child: TextButton(
                    child: Text('I will do this later' ,style: TextStyle(fontSize:12)),
                    onPressed: () {
                      Navigator.pushNamed(context, 'disclaimer');
                    },
                  )
              )
            ],
          )
      ),
    );
  }
}
