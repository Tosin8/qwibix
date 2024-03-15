import 'package:bellymax/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SettingsMenuTitle extends StatelessWidget {
  const SettingsMenuTitle({
    super.key, required this.title, required this.subText, this.icon, required this.onTap,
  });

final String title; 
final String subText; 
final IconData? icon; 
final VoidCallback onTap; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: onTap,
      child: ListTile(
        leading: Icon(icon, size: 28, color: BColors.primary),
        title: Text(title, style: Theme.of(context).textTheme.titleMedium,), 
        subtitle: Text(subText, style: Theme.of(context).textTheme.labelMedium,),
      ),
    );
  }
}

