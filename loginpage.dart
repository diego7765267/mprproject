import 'package:flutter/material.dart';

class lgn extends StatefulWidget {
  const lgn({Key? key}) : super(key: key);

  @override
  State<lgn> createState() => _lgnState();
}

class _lgnState extends State<lgn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body:Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left:100,top:70),
                child: Text('Glad to have \n  you back!',style: TextStyle(fontSize: 30)),
              ),
              SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.35,
                      left:35,
                      right:35,
                    ),
                    child: Column(
                      children: [
                        Text('Signin details',style: TextStyle(fontSize:25,decoration: TextDecoration.underline)),
                        SizedBox(height: 20),
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
                        SizedBox(height: 20),
                        FlatButton(
                          color: Colors.pink[100],
                          child: Text('Signin',style: TextStyle(fontSize:20)),
                          onPressed: () {
                            Navigator.pushNamed(context, 'homepage');
                          },
                        ),
                        SizedBox(height: 20),
                        Text('Wait, i am new to Anavrin'),
                        Row(
                          children: [
                            SizedBox(width: MediaQuery.of(context).size.width*0.22),
                            TextButton(
                              child: Text('Signup',style: TextStyle(fontSize:15)),
                              onPressed: () {
                                Navigator.pushNamed(context, 'signup_page');
                              },
                            ),
                            Text('instead?')
                          ],
                        )
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
