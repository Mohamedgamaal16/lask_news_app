class ErrorNewsModel {
  final String status;
  final String code;
  final String message;

  ErrorNewsModel({
    required this.status,
    required this.code,
    required this.message,
  });

  factory ErrorNewsModel.fromJson(Map<String, dynamic> json) {
    return ErrorNewsModel(
      status: json['status'] as String,
      code: json['code'] as String,
      message: json['message'] as String,
    );
  }
}