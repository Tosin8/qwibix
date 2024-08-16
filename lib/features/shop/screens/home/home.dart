// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:qwibix/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold( 
        body: SingleChildScrollView(
          child: Column(
            children: [
              BPrimaryHeaderContainer(
                child: Column(
                  children: [

                    // appbar
                    const BHomeAppBar(), 

                    const SizedBox(height: BSizes.spaceBtwSections,),

                    // search bar
                    const BSearchContainer(text: 'Search products',), 
 const SizedBox(height: BSizes.spaceBtwSections,),
                    // categories

                    Padding(
                      padding: const EdgeInsets.only(left: BSizes.defaultSpace), 
                    child: Column(
                     // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const BSectionHeading(title: 'Popular Categories',
                        showActionButton: false,
                        textColor: BColors.white,),
                        const SizedBox(height: BSizes.spaceBtwItems,),

                        // category items
                        SizedBox(
                          height: 80, 
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                          
                          itemBuilder: (_, index) {
                            return const BVerticalImageText(); 
                            
                          },
                          
                            ),
                        )

                        
                      ],
                    ),)
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}

class BVerticalImageText extends StatelessWidget {
  const BVerticalImageText({
    Key? key,
    required this.title,
    required this.textColor,
    this.backgroundColor,
    this.onTap, required this.image,
  }) : super(key: key);

final String image, title; 
final Color textColor; 
final Color? backgroundColor; 
final void Function()? onTap; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: BSizes.spaceBtwItems),
      child: Column(
        children: [
                                Container(
      width: 56, 
      height: 56, 
      padding: const EdgeInsets.all(BSizes.sm), 
      decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(100), 
      ),
      child:  Center(
        child: Image(image: AssetImage(image), fit: BoxFit.cover, color: Colors.black)
      ),
                                ), 
      
                                // Text 
                                const SizedBox(height: BSizes.spaceBtwItems / 2,), 
                                SizedBox(
      width: 55,
      child: Text(title, style: Theme.of(context).textTheme.labelMedium!.apply(color: BColors.white),
      maxLines: 1, overflow: TextOverflow.ellipsis,))
                                
        ]
      
      ),
    );
  }
}
