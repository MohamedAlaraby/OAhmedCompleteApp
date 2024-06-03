import 'package:dio/dio.dart';
import 'package:flutter_complete_project/Features/Login/data/models/login_request_body.dart';
import 'package:flutter_complete_project/Features/Login/data/models/login_response.dart';
import 'package:flutter_complete_project/core/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  //1-post method 
  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody body,
  );



}