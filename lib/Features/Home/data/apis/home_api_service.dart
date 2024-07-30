import 'package:dio/dio.dart';
import 'package:flutter_complete_project/Features/home/data/apis/home_api_constants.dart';
import 'package:flutter_complete_project/Features/home/data/models/specializations_response_model.dart';
import 'package:flutter_complete_project/core/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';
part 'home_api_service.g.dart';



@RestApi(baseUrl: AppApiConstants.apiBaseUrl)
abstract class HomeApiService {


  factory HomeApiService(Dio dio) = _HomeApiService;

  
  @GET(HomeApiConstants.specializationEP)
  Future<SpecializationsResponseModel> getSpecializations();



}
