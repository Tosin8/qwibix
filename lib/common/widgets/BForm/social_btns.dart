import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qwibix/features/authentication/controllers/login/login_controller.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/sizes.dart';

class BFormSocialMedia extends StatelessWidget {
  const BFormSocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    // Debug prints to check if the image paths are correct
    print('Google image path: ${BImages.google}');
    print('Facebook image path: ${BImages.facebook}');

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: BColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () => controller.googleSignIn(),
            icon: const Image(
              width: BSizes.iconMd,
              height: BSizes.iconMd,
              image: AssetImage(BImages.google),
            ),
          ),
        ),
        const SizedBox(
          width: BSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: BColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: BSizes.iconMd,
              height: BSizes.iconMd,
              image: AssetImage(BImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
