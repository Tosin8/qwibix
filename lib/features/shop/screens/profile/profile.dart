import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/features/shop/screens/profile/screen_tile/address/my_address.dart';
import 'package:qwibix/features/shop/screens/profile/widget.profileuser/profile_user_screen.dart';
import 'package:qwibix/features/shop/screens/profile/widget/menuTitles.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';


import 'screen_tile/orders/orders.dart';
import 'widget/userprofiletile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              
              // Header
              BPrimaryHeaderContainer(child: Column(
                children: [
                  //AppBar
                  BAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: BColors.white),)), 
                  const SizedBox(height: BSizes.spaceBtwItems,), 

                  // Profile Card
                   UserProfileTile(onPressed: () => Get.to ( () => const ProfileUserScreen(),)), 
                  const SizedBox(height: BSizes.spaceBtwSections,), 
                ],
              )), 

              Padding(padding: const EdgeInsets.all(BSizes.defaultSpace), 
              child: Column(
                children: [

                  // Account Setting. 
                  const BSectionHeading(title: 'Account Settings' , showActionButton: false,),
                  const SizedBox(height: BSizes.spaceBtwItems,),

                  SettingsMenuTitle(title: 'My Addresses', subText: 'Set Shopping Delivery Address', 
                  icon: Iconsax.safe_home,
                   onTap: () => Get.to(() => const UserAddressScreen()),
                  
                  ) , 
                   SettingsMenuTitle(title: 'My Cart', subText: 'Add, remove products and move to checkout', 
                  icon: Iconsax.shopping_cart, onTap: () {  },) , 
                  SettingsMenuTitle(title: 'My Orders', subText: 'In Progress and Completed Orders', 
                  icon: Iconsax.discount_shape, onTap: () => Get.to(() => const OrderScreen()),) , SettingsMenuTitle(title: 'My Coupons', subText: 'List of all the discounted coupons', 
                  icon: Iconsax.safe_home, onTap: () {  },) , 
                  SettingsMenuTitle(title: 'Notifications', subText: 'Set any kind of notification messge', 
                  icon: Iconsax.notification,
                   onTap: () {  },) ,

                   // App Settings. 

                   const SizedBox(height: BSizes.spaceBtwSections,), 
                   const BSectionHeading(title: 'App Settings' , showActionButton: false,), 
                   const SizedBox(height: BSizes.spaceBtwItems), 
                   SettingsMenuTitle(title: 'Geolocation', subText: 'Set recommendation based on your location',
                    icon: Iconsax.location,
                    onTap: (){}, 
                    trailing: Switch(value: true, onChanged: (value){}),), 

                    // logout button.
                    const SizedBox(height: BSizes.spaceBtwSections,), 
                    SizedBox(width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout'),), 
                    ), 
                ],
              ),)
            ],
          ),
        ),
      ),
    );
  }
}