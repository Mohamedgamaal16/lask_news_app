import 'package:trendspot_newes_app/core/api/endpoint.dart';

class ErrorModel {
  final int status;
  final String errorMessage;

  ErrorModel({required this.status, required this.errorMessage});
  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      status: jsonData[RegestrionApiKey.status],
      errorMessage: jsonData[RegestrionApiKey.errorMessage],
    );
  }
}
