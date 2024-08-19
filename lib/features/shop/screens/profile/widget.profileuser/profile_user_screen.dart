import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/common/widgets/images/b_brand_image.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/sizes.dart';

class ProfileUserScreen extends StatelessWidget {
  const ProfileUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      appBar: const BAppBar(showBackArrow: true, title: Text('Profile'),),

      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(BSizes.defaultSpace), 
        child: Column(
          children: [

            // Profile Picture. 
            Column(
              children: [
                const BCircularImage(image: BImages.user, width: 80, height: 80,),
                TextButton(onPressed: (){}, child: const Text('Change Profile Picture'))
              ],
            )
          ],
        ),),
      )
    );
  }
}