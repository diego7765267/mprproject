import 'package:flutter/material.dart';

class usr extends StatefulWidget {
  const usr({Key? key}) : super(key: key);

  @override
  State<usr> createState() => _usrState();
}

class _usrState extends State<usr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.07,top: MediaQuery.of(context).size.height*0.14),
              child: Text('<username>',style: TextStyle(fontSize: 30),),
            ),
            Container(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.07,top: MediaQuery.of(context).size.height*0.3),
              child: SizedBox(
                width:135,
                height: 180,
                child: FloatingActionButton(
                  backgroundColor: Colors.orange[200],
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                  child: Text('Journal',style: TextStyle(color: Colors.black)),
                  onPressed: (){
                    Navigator.pushNamed(context, 'loginpage');
                  },
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.55,top: MediaQuery.of(context).size.height*0.3),
              child: SizedBox(
                width:135,
                height: 180,
                child: FloatingActionButton(
                  backgroundColor: Colors.pink[100],
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                  child: Text('    write your\n  feelings out?',style: TextStyle(color: Colors.black)),
                  onPressed: (){
                    Navigator.pushNamed(context, 'mood_tracker');
                  },
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.07,top: MediaQuery.of(context).size.height*0.6),
              child: SizedBox(
                width:300,
                height: 140,
                child: FloatingActionButton(
                  backgroundColor: Colors.greenAccent[100],
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                  child: Text('to-do list',style: TextStyle(color: Colors.black)),
                  onPressed: (){
                    Navigator.pushNamed(context, 'homepage');
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
