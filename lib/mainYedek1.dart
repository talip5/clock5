import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:date_format/date_format.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var now = DateTime.now();

  get year5 => now.year;

  void date5() {
    print('date5');
    print(now.year);
    //print(formatDate(DateTime(1989, 02, 21), [yyyy, '-', mm, '-', dd]));
    print(formatDate(
        DateTime(now.year, now.month, now.day), [yyyy, '-', mm, '-', dd]));
  }

  @override
  void initState() {
    super.initState();
    print('super.initState');
  }

  @override
  Widget build(BuildContext context) {
    var _textStyle = TextStyle(
      color: Colors.red,
      fontSize: 50,
    );
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Slider Digital Clock Demo',
        home: Scaffold(
          appBar: AppBar(
            actions: [Column(
              children: [
                Text('Action                '),
                SizedBox(height: 50.0,),
                Text('Action                '),
              ],
            )],
            toolbarHeight: 100,
            flexibleSpace: Container(
              color: Colors.lightGreen,
              child: Column(
                children: [
                  Text(
                    'deneme358                                               ',
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'deneme 35 ',
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'deneme 35                                                ',
                    textAlign: TextAlign.right,
                  ),
                  Row(
                    children: [
                      Text('deneme 35                    ',
                        textAlign: TextAlign.left,),
                      Text('deneme 35                     ',
                        textAlign: TextAlign.left,),
                    ],
                  ),
                ],
              ),
            ),
          ),
          body: Container(
            color: Colors.black,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(onPressed: date5, child: Text('Date')),
                  /*DigitalClock(),
                 const SizedBox(
                    height: 20.0,
                  ),
                  DigitalClock(
                    is24HourTimeFormat: false,
                    digitAnimationStyle: Curves.bounceInOut,
                  ),
                 const SizedBox(
                    height: 20,
                  ),
                  DigitalClock(
                    digitAnimationStyle: Curves.elasticOut,
                    is24HourTimeFormat: false,
                    areaDecoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    hourMinuteDigitTextStyle: const TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 50,
                    ),
                    amPmDigitTextStyle: TextStyle(
                        color: Colors.blueGrey, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DigitalClock(
                    digitAnimationStyle: Curves.easeOutExpo,
                    hourMinuteDigitTextStyle: TextStyle(
                      color: Colors.yellow,
                      fontSize: 50,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DigitalClock(
                    hourMinuteDigitTextStyle: TextStyle(
                      color: Colors.yellow,
                      fontSize: 50,
                    ),
                    secondDigitTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),*/
                  /*DigitalClock(
                    //areaDecoration: BoxDecoration(color: Colors.transparent),
                    areaDecoration: BoxDecoration(
                       // border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20),
                       //color: Colors.transparent),
                        color: Color.fromARGB(255, 3, 12, 84)),
                    areaWidth: 380,
                    showSecondsDigit: false,
                    hourMinuteDigitTextStyle: TextStyle(
                      color: Colors.yellow,
                      fontSize: 130,
                    ),
                  ),*/
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
        ));
  }
}
