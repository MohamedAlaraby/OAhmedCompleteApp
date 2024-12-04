// ignore_for_file: public_member_api_docs, sort_constructors_first
import "package:flutter_complete_project/core/helpers/extensions.dart";
import "package:json_annotation/json_annotation.dart";

part "api_error_model.g.dart";

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;
  @JsonKey(name: 'data')
  final Map<String, dynamic>? errors;

  ApiErrorModel({
    this.message,
    this.errors,
    this.code,
  });
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
  String getAllErrorMessages() {
    if (errors.isNullOrEmpty()) {
      return message ?? "Unknown error occurred";
    }

    String errorMessage = errors!.entries.map((entry) {
      final value = entry.value;
      return value.join(',');
    }).join('\n');

    return errorMessage;
  }
}
