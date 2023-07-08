import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rick_morty/app/services/http/custom_client.dart';
import 'package:rick_morty/app/services/http/custom_response.dart';

class CustomClientImpl implements CustomClient {
  @override
  Future<CustomResponse> get(
    Uri uri, {
    Map<String, String>? headers,
  }) async {
    var response = await http.get(uri);
    return CustomResponse(
      statusCode: response.statusCode,
      headers: response.headers,
      body: jsonDecode(response.body) as Map<String, dynamic>,
    );
  }
}
