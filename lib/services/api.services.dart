// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:projek_samsat/model/info_kendaraan_model.dart';
import 'package:projek_samsat/screens/info_kendaraan/add-info-kendaraan.dart';
import 'package:projek_samsat/services/api_service_header.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/general_model.dart';
import '../utils/constants.dart';

class ApiServicesKendaraan {
  ApiServicesHeader apiServicesHeader = ApiServicesHeader();

  Map<String, String> headerWithoutToken() {
    return {
      'X-Requested-With': 'XMLHttpRequest',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Cache-Control': 'no-cache'
    };
  }

  Map<String, String> headerWithToken(token) {
    return {
      'X-Requested-With': 'XMLHttpRequest',
      'Content-Type': 'application/json',
      'Cache-Control': 'no-cache',
      'X-Authorization': 'Bearer $token'
    };
  }

  Future<InfoKendaraan> addInfoKendaraan(data) async {
    var response = await http.post(
      Uri.parse(Constants.apiUrl),
      body: jsonEncode(data),
    );
    print(" response ${response.statusCode}");
    // print(response.body);
    return InfoKendaraan.fromJson(jsonDecode(response.body));
  }

  // Future<dynamic> addInfoKendaraan(data) async {
  //   var data;
  //   final prefs = await SharedPreferences.getInstance();
  //   var token = prefs.getString('token');
  //   var request = http.MultipartRequest(
  //     'POST',
  //     Uri.parse(
  //         "${Constants.apiUrl}https://cek-samsat.000webhostapp.com/api.php"),
  //   );
  //   request.headers.addAll(apiServicesHeader.headerWithToken(token));
  //   request.fields['jenisKendaraan'] = data['jenisKendaraan'];
  //   request.fields['platNomor'] = data['platNomor'];

  //   try {
  //     http.Response response =
  //         await http.Response.fromStream(await request.send());
  //     if (response.statusCode == 200) {
  //       data = GeneralModel.fromJson(response.body);
  //       return data;
  //     }
  //     return data;
  //   } catch (e) {
  //     return data;
  //   }
  // }
}
