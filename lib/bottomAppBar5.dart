import 'package:clock5/student.dart';
import 'package:flutter/material.dart';
import 'package:clock5/main.dart';

class BottomAppBar5 extends StatefulWidget {

  var now = DateTime.now();
  int dayName35 = 0;
 String dayx='xxxx';
   @override
  _BottomAppBar5State createState() => _BottomAppBar5State();
}

class _BottomAppBar5State extends State<BottomAppBar5> {

String dayNamefunc(){
   widget.dayName35=widget.now.weekday;

   switch(widget.dayName35){
     case 1 :{
       setState(() {
         widget.dayx='Pazartesi';
       });
     }
     break;
     case 2 :{
       setState(() {
         widget.dayx='Salı';
       });
     }
     break;
     case 3 :{
       setState(() {
         widget.dayx='Carşamba';
       });
     }
     break;
     case 4 :{
       setState(() {
         widget.dayx='Perşembe';
       });
       }
     break;
     case 5 :{
       setState(() {
         widget.dayx='Cuma';
       });
     }
     break;
     case 6 :{
       setState(() {
         widget.dayx='Cumartesi';
       });
     }
     break;
     case 7 :{
       setState(() {
         widget.dayx='Pazar';
       });
     }
     break;
     default:{print('Invalid choice');}
   }
   return widget.dayx;
  }
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
      color: Colors.lightBlue,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(dayNamefunc(),style: TextStyle(fontSize: 35.0),textAlign: TextAlign.center,),
          ),
        height: 70.0,
      ),

    );
  }
}
