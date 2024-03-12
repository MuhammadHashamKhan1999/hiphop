
class Constants {

  static const String baseUrl                                         = 'https://hip-hop-street.brandline360.com/api/';

  static const int passwordLength                                     = 6;
  static const int phoneNumberLength                                  = 7;

  static String bearer                                                = 'Bearer';
  static String fcmToken                                              = 'er3409';

  // END POINTS
  static const String signUpUrl                                       = '${baseUrl}register';
  static const String logInUrl                                        = '${baseUrl}login';
  static const String logOutUrl                                       = '${baseUrl}logout';

  //PARAMETERS
  static const String authorization                                   = 'Authorization';
  static const String firstName                                       = 'first_name';
  static const String lastName                                        = 'last_name';
  static const String usernameOrEmail                                 = 'username_or_email';
  static const String email                                           = 'email';
  static const String contactNumber                                   = 'contact_number';
  static const String password                                        = 'password';
  static const String device                                          = 'device';
  static const String deviceToken                                     = 'device_token';
  static const String passwordConfirmation                            = 'password_confirmation';

}