import 'package:flutter/material.dart';

import 'screen/splash/splash_screen.dart';
import 'utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belly Max',
      themeMode: ThemeMode.system,
      // theme: ThemeData(
        
      
      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),

      theme: BAppTheme.lightTheme, 
      darkTheme: BAppTheme.darkTheme,
      home: SplashScreen()
    ); 
    
  }
}

