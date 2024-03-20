class BPlatformException implements Exception {
  final String code;
  BPlatformException({required this.code});
  
  String get message {
    switch (code) {
      case 'ERROR_EMAIL_ALREADY_IN_USE':
    }
  }
  
  
}