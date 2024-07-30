// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
part 'specializations_response_model.g.dart';

@JsonSerializable()
class SpecializationsResponseModel {
  @JsonKey(name: 'data')
  List<SpecializationsData?>? specializationsDataList;

  SpecializationsResponseModel({
    this.specializationsDataList,
  });

 factory SpecializationsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsResponseModelFromJson(json);
}

@JsonSerializable()
class SpecializationsData {
  int? id;
  String? name; //the name of the specialization
  @JsonKey(name: "doctors")
  List<Doctors?>? doctorsList;
  SpecializationsData({
    this.id,
    this.name,
    this.doctorsList,
  });
 factory SpecializationsData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsDataFromJson(json); //auto generation by retrofit package
}

@JsonSerializable()
class Doctors {
  int? id;
  String? name; //the name of the doctor
  String? email;
  String? phone;
  String? photo;
  String? gender;
  @JsonKey(name:"appoint_price")
  int? price;
  String degree;
  Doctors({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.price,
    required this.degree,
  });
   factory  Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);

}
