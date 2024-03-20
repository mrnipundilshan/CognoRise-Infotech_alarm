import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String hour = '00';
  String minute = '00';

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromARGB(185, 63, 81, 181),
          appBar: AppBar(
            title: const Text('Alarm',
                style: TextStyle(
                  color: Colors.white,
                )),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 17, 86, 165),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color.fromARGB(255, 2, 59, 97),
                          borderRadius: BorderRadius.circular(11)),
                      child: Center(
                        child: TextField(
                          onChanged: (value) {
                            hour = value;
                          },
                          style: TextStyle(fontSize: 30, color: Colors.white),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color.fromARGB(255, 2, 59, 97),
                          borderRadius: BorderRadius.circular(11)),
                      child: Center(
                        child: TextField(
                          onChanged: (value) {
                            minute = value;
                          },
                          style: TextStyle(fontSize: 30, color: Colors.white),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(25),
                  child: TextButton(
                    child: const Text(
                      'Create alarm',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    onPressed: () {
                      int hours = int.parse(hour);
                      int minutes = int.parse(minute);
                      FlutterAlarmClock.createAlarm(hours, minutes);
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
