// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:qwibix/utils/constants/colors.dart';

class SettingsMenuTitle extends StatelessWidget {
  const SettingsMenuTitle({
    Key? key,
    required this.title,
    required this.subText,
    this.icon,
    required this.onTap,
    this.trailing,
  }) : super(key: key);

final String title; 
final String subText; 
final IconData? icon; 
final VoidCallback onTap; 
final Widget? trailing; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: onTap,
      child: ListTile(
        leading: Icon(icon, size: 28, color: BColors.primary),
        title: Text(title, style: Theme.of(context).textTheme.titleMedium,), 
        subtitle: Text(subText, style: Theme.of(context).textTheme.labelMedium,),
        trailing: trailing,
      ),
    );
  }
}

