import 'dart:ui';

import 'package:bmi/component/calculate.dart';
import 'package:bmi/screen/result.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../component/set_container.dart';
import '../component/constant.dart';

enum Gender { male, female }

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

Color maleColor = kbginActive;
Color femaleColor = kbginActive;
int h1 = 150;
int w1 = 50;
int age = 18;

class _IndexPageState extends State<IndexPage> {
  void updategender(Gender x) {
    if (x == Gender.male) {
      if (femaleColor == kbgActive) {
        femaleColor = kbginActive;
      }
      maleColor = maleColor == kbginActive ? kbgActive : kbginActive;
    } else {
      if (maleColor == kbgActive) {
        maleColor = kbginActive;
      }
      femaleColor = femaleColor == kbginActive ? kbgActive : kbginActive;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
        backgroundColor: Color(0xFF1D2136),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(12),
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            updategender(Gender.male);
                          });
                          print('male');
                        },
                        child: SetContainer(
                          color: maleColor,
                          logo: FontAwesomeIcons.mars,
                          text: 'MALE',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: ksizewidth,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            updategender(Gender.female);
                          });
                          print('female');
                        },
                        child: SetContainer(
                          color: femaleColor,
                          logo: FontAwesomeIcons.venus,
                          text: 'FEMALE',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ksizewidth,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: kbginActive,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Height',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text(
                            h1.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 40),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Text('cm')
                        ],
                      ),
                      const SizedBox(
                        width: ksizewidth,
                      ),
                      Slider(
                          min: 50,
                          max: 300,
                          value: h1.toDouble(),
                          onChanged: (double x) {
                            setState(() {
                              h1 = x.round();
                            });
                          }),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: ksizewidth,
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: kbginActive,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Weight',
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              w1.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 25),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (w1 > 0) {
                                        w1--;
                                      }
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (w1 <= 300) {
                                        w1++;
                                      }
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: ksizewidth,
                    ),
                    Expanded(
                      child: Container(
                        color: kbginActive,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Age',
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              age.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 25),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (age > 0) {
                                        age--;
                                      }
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  backgroundColor: kbgActive,
                                  onPressed: () {
                                    setState(() {
                                      if (age <= 120) {
                                        age++;
                                      }
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
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
                    Calculate calc = Calculate(height: h1, weight: w1);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Result(
                          bmi: calc.calculateBMI(),
                          inter: calc.getInterPretation(),
                          result: calc.getResult(),
                        ),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      'Calculate!',
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
    );
  }
}
