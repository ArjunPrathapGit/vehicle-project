import 'package:vehicleproject/models/logged_in_user.dart';

class ApiConstants {
  static String baseUrl = 'https://al-balad.e8demo.com/api/customer/v1/';

  static String profileUrl = '${baseUrl}profile/';

  static Map<String, String> getAuthHeader(){
    return {'Authorization': 'Bearer ${LoggedInUser.token?.accessToken}'};
  }
}