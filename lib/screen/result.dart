import 'package:bmi/component/calculate.dart';
import 'package:flutter/material.dart';
import '../component/constant.dart';

class Result extends StatelessWidget {
  Result({this.result, this.bmi, this.inter});

  String? result;
  String? bmi;
  String? inter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF1D2136),
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTickMarkColor: Colors.white,
          thumbColor: const Color(0xFFEB1555),
          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15),
          overlayShape: const RoundSliderOverlayShape(overlayRadius: 30),
          overlayColor: const Color(0x29EB1555),
          inactiveTrackColor: Colors.grey,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData().copyWith(
          backgroundColor: kbgActive,
          shape: CircleBorder(eccentricity: 0.5),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'BMI CALCULATOR',
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Your Result',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                  ),
                ),
                SizedBox(
                  height: ksizewidth,
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: kbginActive,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Center(
                          child: Text(
                            result.toString(),
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            bmi.toString(),
                            style: kresultStyle,
                          ),
                        ),
                        Center(
                          child: Text(
                            inter.toString(),
                            style: TextStyle(fontSize: 25),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: ksizewidth,
                ),
                Container(
                  padding: EdgeInsets.all(ksizewidth),
                  // margin: EdgeInsets.all(ksizewidth),
                  color: Colors.purple[300],
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Center(
                      child: Text(
                        'Re-Calculate!',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
