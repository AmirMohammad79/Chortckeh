import 'package:chortkeh/services/api_service.dart';
import 'package:flutter/cupertino.dart';

class AuthProvider extends ChangeNotifier{
  bool isAuthentication = false;
  late String token;
  ApiService apiService = ApiService('');
  AuthProvider();
  Future<String> register (String firstName, String lastName , String mobile , String password , String passwordConfirmation )async{
       token = await apiService.register(firstName, lastName, mobile, password, passwordConfirmation);
      isAuthentication = true;
      notifyListeners();
      return token;
  }
  Future<String> login ( String mobile , String password )async{
       token = await apiService.login( mobile, password);
      isAuthentication = true;
      notifyListeners();
      return token;
  }

}