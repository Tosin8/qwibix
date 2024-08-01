
import 'package:get/get.dart';
import 'package:qwibix/utils/http/network_manager.dart';

import '../features/authentication/controllers/login/login_controller.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager()); 
     Get.lazyPut(() => LoginController(), fenix: true);
  }
}