// ignore_for_file: constant_pattern_never_matches_value_type, duplicate_ignore

class BFormatException implements Exception{
  final String message;
  
  /// Default constructor with a generic error message. 
  
  const BFormatException({this.message = 'An unexpected format error occured. Please check your input'}); 

  /// Create a format exception from a specific error message. 
  factory BFormatException.fromMessage(String message) {
    return BFormatException(message : message);
  }

  /// Get the corresponding error message. 
  String get formattedMessage => message; 

  /// Create a format exception from a specific error code. 
  
  factory BFormatException.fromCode(int code) {
    switch (code) {
      // ignore: constant_pattern_never_matches_value_type
      case 'invalid-email-format': 
        return BFormatException.fromMessage('Invalid email format, Please enter a valid email');
        case 'invalid-phone-number-format':
        return BFormatException.fromMessage('Invalid phone number format, Please enter a valid phone number');
        case 'invalid-date-format': 
        return BFormatException.fromMessage('Invalid date format, Please enter a valid date');
        case 'invalid-url-format':
        return BFormatException.fromMessage('Invalid url format, Please enter a valid url');
        case 'invalid-credit-card-format':
        return BFormatException.fromMessage('Invalid credit card format, Please enter a valid credit card');
        case 'invalid-numeric-format':
        return BFormatException.fromMessage('Invalid numeric format, Please enter a valid numeric value');
      default:
        return BFormatException.fromMessage('An unexpected format error occured. Please check your input');
    }
  }
  }