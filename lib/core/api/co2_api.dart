import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:flutter_earth_api/core/constants/api_constant.dart';
import 'package:flutter_earth_api/core/models/co2.dart';

class CO2Service {
  Future<List<CO2Model>?> getYearlyCo2() async {
    try {
      var url = Uri.parse(ApiConstant.co2Endpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        dynamic data = response.body;
        print(data);
        return co2ModelFromJson(data);
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
