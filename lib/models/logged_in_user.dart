class LoggedInUser {
  String? result;
  static Token? token;
  static String? name;
  static String? email;
  static String? uid;
  static String? userId;

  LoggedInUser(
      {this.result, token, name, email, uid, userId});

  LoggedInUser.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    token = json['token'] != null ? Token.fromJson(json['token']) : null;
    name = json['name'];
    email = json['email'];
    uid = json['uid'];
    userId = json['user_id'];
  }

  static Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (token != null) {
      data['token'] = token!.toJson();
    }
    data['name'] = name;
    data['email'] = email;
    data['uid'] = uid;
    data['user_id'] = userId;
    return data;
  }
}

class Token {
  String? accessToken;
  String? refreshToken;
  String? expiresIn;

  Token({this.accessToken, this.refreshToken, this.expiresIn});

  Token.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
    expiresIn = json['expires_in'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['access_token'] = accessToken;
    data['refresh_token'] = refreshToken;
    data['expires_in'] = expiresIn;
    return data;
  }
}
