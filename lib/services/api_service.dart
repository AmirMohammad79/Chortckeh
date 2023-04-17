import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "http://10.0.2.2:8040/api";
  late String token;
  ApiService(this.token);
  Future<String> register(String firstName, String lastName, String mobile,
      String password, String passwordConfirmation) async {
    String uri = '$baseUrl/auth/register';
    http.Response response = await http.post(Uri.parse(uri),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.acceptHeader: 'application/json',
        },
        body: jsonEncode({
          'first_name': firstName,
          'last_name': firstName,
          'mobile': mobile,
          'password': password,
          'password_confirmation': passwordConfirmation,
        }));
    if (response.statusCode == 422) {
      Map<String, dynamic> body = jsonDecode(response.body);
      Map<String, dynamic> errors = jsonDecode(body['errors']);
      String errorMessage = '';
      errors.forEach((key, value) {
        value.forEach((element) {
          errorMessage += element + '\n';
        });
      });

      throw Exception(errorMessage);
    }
    return response.body;
  }
  Future<String> login(String mobile,
      String password) async {
    String uri = '$baseUrl/auth/login';
    http.Response response = await http.post(Uri.parse(uri),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.acceptHeader: 'application/json',
        },
        body: jsonEncode({
          'mobile': mobile,
          'password': password,
        }));
    if (response.statusCode == 422) {
      Map<String, dynamic> body = jsonDecode(response.body);
      Map<String, dynamic> errors = jsonDecode(body['errors']);
      String errorMessage = '';
      errors.forEach((key, value) {
        value.forEach((element) {
          errorMessage += element + '\n';
        });
      });

      throw Exception(errorMessage);
    }
    return response.body;
  }
}
