class BFormatException implements Exception{
  final String message;
  
  /// Default constructor with a generic error message. 
  
  const BFormatException({this.message = 'An unexpected format error occured. Please check your input'}); 

  /// Create a format exception from a specific error message. 
  factory BFormatException.fromMessage(String message) {
    return BFormatException(message);
  }

  /// Get the corresponding error message. 
  String get formattedMessage => message; 
  }