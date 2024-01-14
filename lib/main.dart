import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_3/pages/homepage.pages.dart';
import 'package:task_3/pages/login.pages.dart';
import 'package:task_3/pages/main_splash.pages.dart';
import 'package:task_3/pages/splash_screen.pages.dart';
import 'package:task_3/services/ads_provider.dart';
import 'package:task_3/services/ads_repository.dart';
import 'package:task_3/services/api_services.dart';
import 'package:task_3/services/preferences.services.dart';

import 'bloc/ads_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    PrefrencesService.prefs = await SharedPreferences.getInstance();

    if (PrefrencesService.prefs != null) {
      print("prefrences init successfully");
    }
  } catch (e) {
    print("Error in init Prefrences ${e}");
  }
  

  runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (_) => AdsProvider())
      ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "Hellix",
          appBarTheme: AppBarTheme(),
          primarySwatch: Colors.cyan),
      home: SplashScreen(),
    );
  }
}
