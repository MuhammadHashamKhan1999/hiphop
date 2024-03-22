
class Constants {

  static const String baseUrl                                         = 'https://hip-hop-street.brandline360.com/api/';
  static const String imageBaseUrl                                    = 'https://hip-hop-street.brandline360.com/storage/app/public/';

  static const int passwordLength                                     = 6;
  static const int phoneNumberLength                                  = 7;

  static const double textFieldHeight                                 = 18;
  static const double textFieldWidth                                  = 12;

  static String bearer                                                = 'Bearer';
  static String fcmToken                                              = 'er3409';

  static const String socialLoginTypeGoogle                           = 'google';
  static const String socialLoginTypeFacebook                         = 'facebook';

  // END POINTS
  static const String signUpUrl                                       = '${baseUrl}register';
  static const String logInUrl                                        = '${baseUrl}login';
  static const String socialRegisterUrl                               = '${baseUrl}socialRegister';
  static const String logOutUrl                                       = '${baseUrl}logout';
  static const String loggedUserUrl                                   = '${baseUrl}logged-user';
  static const String updateProfileUrl                                = '${baseUrl}update-profile';

  //PARAMETERS
  static const String authorization                                   = 'Authorization';
  static const String name                                            = 'name';
  static const String firstName                                       = 'first_name';
  static const String lastName                                        = 'last_name';
  static const String usernameOrEmail                                 = 'username_or_email';
  static const String userId                                          = 'user_id';
  static const String email                                           = 'email';
  static const String isEmailExist                                    = 'is_email_exist';
  static const String profilePicture                                  = 'profile_picture';
  static const String phone                                           = 'phone';
  static const String accountType                                     = 'account_type';
  static const String contactNumber                                   = 'contact_number';
  static const String password                                        = 'password';
  static const String username                                        = 'username';
  static const String method                                          = '_method';
  static const String put                                             = 'PUT';
  static const String device                                          = 'device';
  static const String deviceToken                                     = 'device_token';
  static const String passwordConfirmation                            = 'password_confirmation';
}