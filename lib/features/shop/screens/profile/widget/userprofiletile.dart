

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/common/widgets/images/b_brand_image.dart';
import 'package:qwibix/utils/constants/colors.dart';

import '../../../../../utils/constants/image_strings.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key, required this.onPressed, 
  });

final VoidCallback onPressed; 
  @override
  Widget build(BuildContext context) {
    return ListTile(
     leading: const BCircularImage(image: BImages.user, width: 50, height: 50,padding: 0,), 
     title: Text('John Doe',
      style: Theme.of(context).textTheme.headlineSmall!.apply(color: BColors.white),
      ),
     subtitle:  Text('johndoe@gmail.com', 
     style: Theme.of(context).textTheme.bodyMedium!.apply(color: BColors.white), 
     
     
     ),
     trailing: IconButton(onPressed: onPressed,
      icon: const Icon(Iconsax.edit, color: BColors.white)),
                      );
  }
}