class BFirebaseException implements Exception{
  final String code; 

  /// constructor that takes an error code. 
   BFirebaseException(this.code);

   /// Get the corresponing error message base on the error code
   
   String get message{
    switch (code) {
      case 'unknown': 
        return 'An unknown error has occured, Please try again';
      case 'invalid-custom-token':
      return 'The custom token format is incorrect. Please check your custom token';
      case 'custom-token-mismatch':
      return 'The custom token corresponds to a different audience';
      case 'invalid-email':
      return 'The supplied auth credential is malformed, has expired or is not approved for this project';
    }
   }
}