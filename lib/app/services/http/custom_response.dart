final class CustomResponse {
  final Map<String, dynamic> body;
  final int statusCode;
  final Map<String, String> headers;

  CustomResponse({
    required this.body,
    required this.statusCode,
    required this.headers,
  });
}
