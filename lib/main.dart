import 'package:clock5/student.dart';
import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:date_format/date_format.dart';
import 'package:clock5/bottomAppBar5.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  BottomAppBar5 bottomAppBar5=BottomAppBar5();
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var now = DateTime.now();
  String titleYear = '';
  String titleMouth = '';
  String titleDay = '';
  String titleDate = '';

  get year5 => now.year;

  String date5() {
    print('date5');
    print(now.year);
    //print(formatDate(DateTime(1989, 02, 21), [yyyy, '-', mm, '-', dd]));
    print(formatDate(
        DateTime(now.year, now.month, now.day), [yyyy, '-', mm, '-', dd]));
    titleYear = now.year.toString();
    titleMouth = now.month.toString();
    titleDay = now.day.toString();
    titleDate = '  $titleDay.$titleMouth.$titleYear';
    return titleDate;
  }

  @override
  void initState() {
    super.initState();
    print('super.initState');
    setState(() {
      date5();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Slider Digital Clock Demo',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70,
            flexibleSpace: Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    titleDate,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 35.0),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: widget.bottomAppBar5,
          body: Container(
            color: Colors.black,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  DigitalClock(
                    areaDecoration: BoxDecoration(color: Colors.transparent),
                    areaAligment: AlignmentDirectional.center,
                    hourMinuteDigitDecoration:
                        BoxDecoration(color: Colors.transparent),
                    showSecondsDigit: false,
                    hourMinuteDigitTextStyle: TextStyle(
                      color: Colors.yellow,
                      fontSize: 100,
                    ),
                    secondDigitTextStyle: TextStyle(fontSize: 11),
                  )
                ],
              ),
            ),
          ),
          /*bottomNavigationBar: new BottomAppBar(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu),
                  ),
                ],
              ),
            ),*/
        ),
      ),
    );
  }
}
