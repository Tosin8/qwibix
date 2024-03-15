import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context); 
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, 
        title: Text('Profile', style: Theme.of(context).textTheme.headlineMedium!.apply(color: dark ? Colors.white : Colors.black),),
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            // User profile card

            ListTile(
              leading: CircleAvatar(
                radius: 40,
                child: Container(
                  
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/user.png'))),
                ),
              )
            )
          ],
        ),
      )
      );
    
  }
}