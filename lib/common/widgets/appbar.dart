import 'package:flutter/material.dart';

class BAppBar extends StatelessWidget {
  const BAppBar({super.key,
   this.title, required this.showBackArrow, this.leadingIcon, this.actions, this.leadingOnPressed});

  final Widget? title; 
  final bool showBackArrow; 
  final IconData? leadingIcon; 
  final List<Widget>? actions; 
  final VoidCallback? leadingOnPressed; 

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}