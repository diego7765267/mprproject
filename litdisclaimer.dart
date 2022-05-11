import 'package:flutter/material.dart';

class disc extends StatefulWidget {
  const disc({Key? key}) : super(key: key);

  @override
  State<disc> createState() => _discState();
}

class _discState extends State<disc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body:Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left:30,top:70),
                child: Text('A Little \nDisclaimer:',style: TextStyle(fontSize: 30)),
              ),
              SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.25,
                      left:35,
                      right:35,
                    ),
                    child: Container(
                      child: Text('Since you have chosen not to login, only limited features of the app will be accessible. You can choose to login at a later moment if you change your mind. For now, you can use the following features:\n1.Chat options \n(Both with Aurora and Anonymously)\n2.Daily Journal\n3.Recommendations notifications'),
                    )
                ),
              ),
              Container(
                  padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05,top:MediaQuery.of(context).size.height*0.9),
                  child: Row(
                    children: [
                      TextButton(
                        child: Text('Signup' ,style: TextStyle(fontSize:20)),
                        onPressed: () {
                          Navigator.pushNamed(context, 'signup_page');
                        },
                      ),
                      SizedBox(width:MediaQuery.of(context).size.width*0.4 ),
                      TextButton(
                        child: Text('Continue' ,style: TextStyle(fontSize:20)),
                        onPressed: () {
                          Navigator.pushNamed(context, 'usrpage');
                        },
                      ),
                    ],
                  )
              )
            ],
          )
      ),
    );
  }
}
