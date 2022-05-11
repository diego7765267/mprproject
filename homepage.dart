import 'dart:io';

import 'package:flutter/material.dart';

class homepg extends StatefulWidget {
  const homepg({Key? key}) : super(key: key);

  @override
  State<homepg> createState() => _homepgState();
}

class _homepgState extends State<homepg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[50],
      child:Scaffold(
        backgroundColor: Colors.transparent,
        body:Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.35,top:MediaQuery.of(context).size.height*0.45),
              child: Column(
                children: [
                  Text('ANAVRIN',style: TextStyle(fontSize: 30)),
                  SizedBox(height:20),
                  SizedBox(
                    width:80,
                    height: 40,
                    child: FloatingActionButton(
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                      child: Text('continue'),
                      onPressed: (){
                        Navigator.pushNamed(context, 'loginpage');
                      },
                    ),
                  )
                ],
              )
            )
          ],
        )
      )
    );
  }
}
