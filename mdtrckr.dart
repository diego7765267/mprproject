import 'package:flutter/material.dart';

class mdtrker extends StatefulWidget {
  const mdtrker({Key? key}) : super(key: key);

  @override
  State<mdtrker> createState() => _mdtrkerState();
}

class _mdtrkerState extends State<mdtrker> {

  final txtval=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children:[
            Container(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1,top: MediaQuery.of(context).size.height*0.15),
              child: Text('this is the mood tracker',style: TextStyle(fontSize: 20),),
            ), //text2
            Container(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1,top: MediaQuery.of(context).size.height*0.25),
              child: Text('how are you feeling?',style: TextStyle(fontSize: 20),),
            ), //text2
            Container(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.3,right: MediaQuery.of(context).size.height*0.05),
              child: SizedBox(
                child:TextField(
                  controller: txtval,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[100],
                    filled: true,
                    hintText: 'how are you feeling?',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0)
                    ),
                  ),
                  minLines: 15,
                  maxLines: 15,
                ),
              )
            ), //textfield
            Container(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.68,top: MediaQuery.of(context).size.height*0.8),
              child: SizedBox(
                width:80,
                height: 40,
                child: FloatingActionButton(
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                  child: Text('continue'),
                  onPressed: (){
                    Navigator.pushNamed(context, 'homepage');
                  },
                ),
              )
            ), //continuebutton
            Container(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.8),
                child: SizedBox(
                  width:100,
                  height: 40,
                  child: FloatingActionButton(
                    shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                    child: Text('view text'),
                    onPressed: (){
                      showDialog(context: context, builder: (context){return AlertDialog(
                              content: Text(txtval.text),
                            );
                          }
                      );
                    },
                  ),
                )
            ), //viewtext
          ]
        )
      )
    );
  }
}
