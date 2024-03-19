import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class NetworkManager extends GetxController{
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectivityResult = ConnectivityResult.none.obs;


  /// 
}