import 'package:meta/meta.dart';
import 'dart:convert';

class GeneralModel {
  GeneralModel({
    required this.code,
    required this.message,
  });

  String code;
  String message;

  factory GeneralModel.fromJson(String str) =>
      GeneralModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GeneralModel.fromMap(Map<String, dynamic> json) => GeneralModel(
        code: json["code"],
        message: json["message"],
      );

  Map<String, dynamic> toMap() => {
        "code": code,
        "message": message,
      };
}
