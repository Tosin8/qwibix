
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/data/repositories/authentication/authentication_repository.dart';
// import 'package:qwibix/features/personalization/controllers/user_controller.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import 'widget/appmenuTitles.dart';
import 'widget/menuTitles.dart';
import 'widget/profileCard.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
   // final controller = UserController.instance; 
    final logout = Get.put(AuthenticationRepository());
    final dark = BHelperFunctions.isDarkMode(context); 
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, 
        title: Text('Profile', 
        style: Theme.of(context).textTheme.headlineMedium!.apply(color: dark ? Colors.white : Colors.black),),
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            // User profile card

            profileCard(dark: dark), 
            const SizedBox(height:BSizes.spaceBtwSections), 
            const Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: BSectionHeading(
                title: 'Account Settings', 
              buttonTitle: ''),
            ), 
          const SizedBox(height: BSizes.spaceBtwItems,), 
          SettingsMenuTitle(
            title: 'My Address', subText: 'Set shopping delivery address', onTap: () {  },
            icon: Iconsax.safe_home

          ), 
           SettingsMenuTitle(
            title: 'My Cart', subText: 'Add, remove products and move \nto checkout', onTap: () {  },
            icon: Iconsax.shopping_cart

          ), SettingsMenuTitle(
            title: 'My Orders', subText: 'In progress and completed orders', onTap: () {  },
            icon: Iconsax.bag_tick

          ), SettingsMenuTitle(
            title: 'Notification', subText: 'Set any kind of notification message', onTap: () {  },
            icon: Iconsax.notification

          ), SettingsMenuTitle(
            title: 'Pending Reviews', subText: 'Submit your reviews on purchased\nproducts', onTap: () {  },
            icon: Iconsax.activity, 

          ), SettingsMenuTitle(
            title: 'Account Privacy', subText: 'Manage data usage and connected \naccounts', onTap: () {  },
            icon: Iconsax.security_card

          ),  SettingsMenuTitle(
          title: 'Voucher', 
          subText: 'Check it out for discount prices', onTap: (){},
          icon: Iconsax.discount_shape, )
          , 
          SettingsMenuTitle(
          title: 'Consumer Care', 
          subText: 'Reach us to us through our live chat', onTap: (){},
          icon: Iconsax.call_calling, )
          , 
          SettingsMenuTitle(
          title: 'History', 
          subText: 'Browse through your recently \nviewed products', onTap: (){},
          icon: Iconsax.document_previous, ),
          

          
          const SizedBox(height: BSizes.spaceBtwSections,), 
          // app settings
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: BSectionHeading(title: 'App Settings', 
              buttonTitle: ''),
          ), 
          const SizedBox(height: BSizes.spaceBtwItems,), 
          ASettingsMenuTitle(
            title: 'Geo location', subText: ' Set recommendation based on location', onTap: () {  },
            icon: Iconsax.location

          ), 
          ASettingsMenuTitle(
            title: 'Offline Use', subText: 'Still want to use the app with no network available', onTap: () {  },
            icon: Iconsax.location, 
trailing: Switch(value: false, onChanged: (value){}),
          ), 

//SizedBox(height: BSizes.spaceBtwItems,), 
          // consumer care
         
       
// logout button 
const SizedBox(height: BSizes.spaceBtwSections,), 
Padding(
  padding: const EdgeInsets.all(18.0),
  child: SizedBox(
    width: double.infinity, 
    child: OutlinedButton(
      onPressed: () => logout.logout(), 
    
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Iconsax.logout),
          SizedBox(width: BSizes.spaceBtwItems,) , 
          Text('Logout'),
        ],
      ),
    )),
  ),

const SizedBox(height: BSizes.spaceBtwSections * 2.5,), 
          ],
        ),
      )
      );
    
  }
}

