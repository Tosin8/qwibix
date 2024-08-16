
import 'package:flutter/material.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

class BVerticalImageText extends StatelessWidget {
  const BVerticalImageText({
    Key? key,
    required this.title,
    this.textColor = BColors.white,
    this.backgroundColor ,
    this.onTap, required this.image,
  }) : super(key: key);

final String image, title; 
final Color textColor; 
final Color? backgroundColor; 
final void Function()? onTap; 

  @override
  Widget build(BuildContext context) {

    final dark = BHelperFunctions.isDarkMode(context);
    return GestureDetector( 
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: BSizes.spaceBtwItems),
        child: Column(
          children: [
                                  Container(
        width: 56, 
        height: 56, 
        padding: const EdgeInsets.all(BSizes.sm), 
        decoration: BoxDecoration(
          color: backgroundColor ?? (dark ? BColors.black: BColors.white), 
        borderRadius: BorderRadius.circular(100), 
        ),
        child:  Center(
          child: Image(image: AssetImage(image), fit: BoxFit.cover, 
          color: BHelperFunctions.isDarkMode(context) ? Colors.white : Colors.black)
        ),
                                  ), 
        
                                  // Text 
                                  const SizedBox(height: BSizes.spaceBtwItems / 2,), 
                                  SizedBox(
        width: 55,
        child: Text(title, style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
        maxLines: 1, overflow: TextOverflow.ellipsis,))
                                  
          ]
        
        ),
      ),
    );
  }
}
