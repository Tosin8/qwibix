import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/constants/text_strings.dart';
import 'package:bellymax/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'widget.profileuser/update_name_controller.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateNameController()); 
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Name', style: Theme.of(context).textTheme.headlineSmall,)
      ),
      body:  Padding(
        padding: const EdgeInsets.all(BSizes.defaultSpace), 

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          // Headings
          const Text('Use real name for easy verification. This name will appear on several pages. '), 
          const SizedBox(height: BSizes.spaceBtwSections,), 

          /// Text field and Button
          Form(
            key: controller.updateUserNameFormKey,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.firstName, 
                  validator: (value) => BValidator.validateEmptyText('First Name', value),
                  expands: false, 
                  decoration: const InputDecoration(labelText: BTexts.firstName, prefixIcon: Icon(Iconsax.user)
                  ),
                  
                ), 
                const SizedBox(height: BSizes.spaceBtwInputFields,), 

                TextFormField(
                  controller: controller.firstName, 
                  validator: (value) => BValidator.validateEmptyText('Last Name', value),
                  expands: false, 
                  decoration: const InputDecoration(labelText: BTexts.lastName, prefixIcon: Icon(Iconsax.user)
                  ),
                  
                ),
              ],
            )), 
            const SizedBox(height: BSizes.spaceBtwSections,), 

            /// Save Button 
            SizedBox(
              width: double.infinity, 
              child: ElevatedButton(
                onPressed: () => controller.updateUserName(), 
                child: const Text('Save')),
            )
        ]
      ),)
    );
  }
}