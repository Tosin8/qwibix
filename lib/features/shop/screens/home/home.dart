// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:qwibix/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold( 
        body: SingleChildScrollView(
          child: Column(
            children: [
              BPrimaryHeaderContainer(
                child: Column(
                  children: [


                    SizedBox(height: BSizes.spaceBtwSections ,),
                    // appbar
                    BHomeAppBar(), 

                    SizedBox(height: BSizes.spaceBtwSections,),

                    // search bar
                    BSearchContainer(text: 'Search products',), 
 SizedBox(height: BSizes.spaceBtwSections,),
                    // categories

                    Padding(
                      padding: EdgeInsets.only(left: BSizes.defaultSpace), 
                    child: Column(
                     // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BSectionHeading(title: 'Popular Categories',
                        showActionButton: false,
                        textColor: BColors.white,),
                        SizedBox(height: BSizes.spaceBtwItems,),

                        // category items
                        BHomeCategories()

                        
                      ],
                    ),)
                  ],
                ),
              ), 

              // Carousel
              Padding(
                padding: EdgeInsets.all(BSizes.defaultSpace),
                child: BRoundedImage(imageUrl: BImages.banner4,),
              )
            ],
          ),
        )
      ),
    );
  }
}

class BRoundedImage extends StatelessWidget {
  const BRoundedImage({
    Key? key,
    this.height = 150,
    required this.imageUrl,
    this.applyImageRadius = false,
    this.border,
     this.backgroundColor = BColors.white, 
    this.fit = BoxFit.contain, 
    this.padding,
this.isNetworkImage = false,
    this.onPressed, this.width = 150, this.borderRadius = BSizes.md,
  }) : super(key: key);


final double? width, height; 
final String imageUrl; 
final bool applyImageRadius; 
final BoxBorder? border; 
final Color backgroundColor; 
final BoxFit? fit; 
final EdgeInsetsGeometry? padding; 
final bool isNetworkImage; 
final VoidCallback? onPressed;
final double borderRadius; 


  @override
  Widget build(BuildContext context) {
    return GestureDetector( 

      onTap: onPressed,
      child: Container (
        width: width, 
        height: height, 
        padding: padding, 
        decoration: BoxDecoration(
          border: border, 
          borderRadius: BorderRadius.circular(borderRadius), 
          color: backgroundColor),
          child:  ClipRRect(
            borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero, 
            child: Image(image: isNetworkImage? NetworkImage(imageUrl) : AssetImage(imageUrl) as ImageProvider, fit: fit)),
      ),
    );
  }
}
