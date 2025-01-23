import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:vehicleproject/constants/api_constants.dart';
import 'package:vehicleproject/screens/profile%20page/widgets/models/profile_model.dart';
import 'package:http/http.dart' as http;

class ProfileScreenProvider with ChangeNotifier{
  ProfileModel? profile;

  Future<void> getProfle () async{
    final response = await http.get(Uri.parse(ApiConstants.profileUrl),
    headers: ApiConstants.getAuthHeader(),
    );
    log(response.body);

    if(response.statusCode==200){
      final json = jsonDecode(response.body);
      if(json['result'] == 'success'){
        profile = ProfileModel.fromJson(json['records']);
        notifyListeners();
      }
      

    }
  }
  
}