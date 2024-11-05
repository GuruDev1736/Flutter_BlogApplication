import 'package:flutter_application_1/Features/Auth/Domain/auth_repository.dart';

import 'package:flutter_application_1/core/Error/failure.dart';
import 'package:flutter_application_1/core/usecase/usecase.dart';
import 'package:fpdart/fpdart.dart';

class UserSignup implements Usecase<String, UserSignupParams> {
  final AuthRepository authRepository;
  const UserSignup(this.authRepository);

  @override
  Future<Either<Failure, String>> call(UserSignupParams params) async {
    return await authRepository.SignupWithEmailPassword(
        name: params.name, email: params.email, password: params.password);
  }
}

class UserSignupParams {
  final String email;
  final String password;
  final String name;

  UserSignupParams({
    required this.email,
    required this.password,
    required this.name,
  });
}
