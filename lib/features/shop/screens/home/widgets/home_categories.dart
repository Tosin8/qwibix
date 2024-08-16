

import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/image_text_widgets/vertical_image_text.dart';

class BHomeCategories extends StatelessWidget {
  const BHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80, 
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
      
      itemBuilder: (_, index) {
        return  BVerticalImageText(title: 'Shoes', image: '',
        onTap: () {
          
        },
                ); 
        
      },
      
        ),
    );
  }
}
