class CustomHttpException implements Exception {
  final int code;
  final String message;

  CustomHttpException({required this.code, required this.message});
}
