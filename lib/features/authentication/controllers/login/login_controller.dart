import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:qwibix/common/widgets/loaders/loaders.dart';
import 'package:qwibix/data/repositories/authentication/authentication_repository.dart';
import 'package:qwibix/features/personalization/controllers/user_controller.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/http/network_manager.dart';
import 'package:qwibix/utils/popups/full_screen_loader.dart';

class LoginController extends GetxController {
  // Variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final userController = Get.put(UserController());

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    password = TextEditingController();
    _loadSavedCredentials();
    print("LoginController initialized");
  }

  void togglePasswordVisibility() => hidePassword.toggle();
  void toggleRememberMe() => rememberMe.toggle();

  void _loadSavedCredentials() {
    final savedEmail = localStorage.read<String>('REMEMBER_ME_EMAIL');
    final savedPassword = localStorage.read<String>('REMEMBER_ME_PASSWORD');
    
    email.text = savedEmail ?? '';
    password.text = savedPassword ?? '';
  }

  @override
  void onClose() {
    email.dispose();
    password.dispose();
    print("LoginController disposed");
    super.onClose();
  }

  // Email and Password SignIn
  Future<void> emailAndPasswordSignIn() async {
    try {
      // Start loading
      BFullScreenLoader.openLoadingDialog('Logging you in...', BImages.docerAnimation);

      // Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        BFullScreenLoader.stopLoading();
        return;
      }

      // Form validation
      if (!loginFormKey.currentState!.validate()) {
        BFullScreenLoader.stopLoading();
        return;
      }

      // Save data if remember me is selected
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      // Login user using email and password auth.
      // final userCredential = await AuthenticationRepository.instance.loginWithEmailAndPassword(
      //   email.text.trim(),
      //   password.text.trim());

      // Remove loader
      BFullScreenLoader.stopLoading();
      email.clear();
      password.clear();

      // Redirect
      AuthenticationRepository.instance.screenRedirect();
      Get.delete<LoginController>();
    } catch (e) {
      BFullScreenLoader.stopLoading();
      BLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  // Google SignIn Auth.
  Future<void> googleSignIn() async {
    try {
      // Start loading
      BFullScreenLoader.openLoadingDialog('Logging you in...', BImages.docerAnimation);
      
      // Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        BFullScreenLoader.stopLoading();
        return;
      }

      // Google auth.
      final userCredentials = await AuthenticationRepository.instance.signInWithGoogle();

      // Save user record
      await userController.saveUserRecord(userCredentials);

      // Remove loader
      BFullScreenLoader.stopLoading();

      // Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      // Remove loader
      BFullScreenLoader.stopLoading();
      BLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
