import 'package:bmi/component/constant.dart';
import 'package:flutter/material.dart';
import 'screen/index_page.dart';
import 'screen/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
      initialRoute: '/',
      routes: {
        '/': (context) => IndexPage(),
        '/first': (context) => Result(),
      },
    );
  }
}
