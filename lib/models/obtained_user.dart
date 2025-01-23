class ObtainedUser {
  Token? token;
  String? name;
  String? email;
  String? uid;
  String? userId;

  ObtainedUser({this.token, this.name, this.email, this.uid, this.userId});

  ObtainedUser.fromJson(Map<String, dynamic> json) {
    token = json['token'] != null ?  Token.fromJson(json['token']) : null;
    name = json['name'];
    email = json['email'];
    uid = json['uid'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.token != null) {
      data['token'] = this.token!.toJson();
    }
    data['name'] = this.name;
    data['email'] = this.email;
    data['uid'] = this.uid;
    data['user_id'] = this.userId;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.accessToken;
    data['refresh_token'] = this.refreshToken;
    data['expires_in'] = this.expiresIn;
    return data;
  }
}
