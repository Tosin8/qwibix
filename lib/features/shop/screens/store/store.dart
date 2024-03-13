import 'package:bellymax/common/widgets/appbar.dart';
import 'package:bellymax/common/widgets/carticon.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = BHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Menu', style: Theme.of(context).textTheme.headlineMedium,), 
        actions: [
          BCartCounterIcon(darkMode: darkMode), 
          SizedBox(width: 10,)
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: SliverAppBar(), 
        body: Container())
    );
  }
}

