class BPlatformException implements Exception {
  final String code;


  BPlatformException( this.code);
  
  String get message {
    switch (code) {
      case 'INVALID-LOGIN-CREDENTIALS':
        return 'Invalid login credentials, please double check your information'; 
        case 'too-many-requests': 
        return 'Too many requests, please try again later';
        case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email.'; 
         case 'invalid-email':
        return 'The email address provided is invalid. Please enter a valid email. '; 
        case 'invalid-argument': 
        return 'Invalid argument, please double check your information';
        case 'invalid-password': 
        return 'Invalid password, please double check your information';
        case 'invalid-phonenumber':
        return 'Invalid phone number, please double check your information';
        case 'operation-not-allowed':
        return 'The sign-in provider is disabled for this Firebase project';
        case 'session-cookie-exists':
        return 'Session cookie exists, please double check your information';
        case 'uid-aleady-exists':
        return 'UID aleady exists, please double check your information';
        case 'sign-in-failed':
        return 'Sign in failed, please double check your information';
        case 'network-request-failed':
        return 'Network request failed, please check your internet';
        case 'internal-error': 
        return 'Internal error, please double check your information';
        case 'invalid-certification-code':
        return 'Invalid certification code, please enter a valid code';
        case 'invalid-verification-id':
        return 'Invalid verification id, please enter a valid ID';
        case 'missing-app-credential':
        return 'Missing app credential, please double check your information';
        case 'web-storage-unsupported':
        return 'Web storage unsupported or disabled';
        case 'invalid-recipient-email':
        return 'Invalid recipient email, please double check your information';
        case 'missing-android-pkg-name':
        return 'Missing android pkg name, please double check your information';
        case 'missing-action-code': 
        return 'Missing action code, please double check your information';
        case 'invalid-action-code':
        return 'Invalid action code, please double check your information';
        case 'invalid-api-key':
        return 'Invalid api key, please double check your information';
        case 'invalid-continue-uri':
        return 'Invalid continue uri, please double check your information';
        case 'invalid-dynamic-link-domain':
        return 'Invalid dynamic link domain, please double check your information';
        case 'invalid-email':
        return 'Invalid email, please double check your information';
        case 'invalid-hash-algorithm':
        return 'Invalid hash algorithm, please double check your information';
        case 'invalid-issuer':
        return 'Invalid issuer, please double check your information';
        case 'invalid-oauth-provider':
        return 'Invalid oauth provider, please double check your information';
        case 'invalid-recipient':
        return 'Invalid recipient, please double check your information';
        case 'invalid-sender':
        return 'Invalid sender, please double check your information';
        case 'invalid-verification-code':
          return 'Invalid verification code, please double check your information';
        default:  
        return 'Unknown error occurred';
    }
  }
  
  
}