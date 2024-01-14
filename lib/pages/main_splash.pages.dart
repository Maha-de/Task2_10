
import 'package:flutter/material.dart';
import 'package:task_3/pages/splash_screen.pages.dart';

class MainSplash extends StatefulWidget {
  const MainSplash({super.key});

  @override
  State<MainSplash> createState() => _MainSplashState();
}

class _MainSplashState extends State<MainSplash> {


  @override
  void initState() {
    Duration(seconds: 5);
    ()=> Navigator.pushReplacement(context as BuildContext,
        MaterialPageRoute(builder:
    (context) {
      return SplashScreen();}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Container(child: Icon(Icons.ac_unit_outlined, size: 120,)),
      ),
    );
  }
}
