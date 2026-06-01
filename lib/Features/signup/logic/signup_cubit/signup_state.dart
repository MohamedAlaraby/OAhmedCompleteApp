part of 'signup_cubit.dart';

@freezed
class SignupState<T> with _$SignupState<T> {
  ///the sign = when comes with constructor means delegate
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = Loading;
  const factory SignupState.success(T data) = Success<T>;
  const factory SignupState.error({required String error}) = Error;
}