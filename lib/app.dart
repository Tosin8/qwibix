import 'package:bellymax/bindings/general_bindings.dart';
import 'package:bellymax/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
      initialBinding: GeneralBindings(),
      home: const Scaffold(backgroundColor: BColors.primary, body: Center(child: CircularProgressIndicator(color: Colors.white),))
      
      //const OnBoardingScreen()
    ); 
    
  }
}

