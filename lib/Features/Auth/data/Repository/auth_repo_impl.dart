import 'package:flutter_application_1/Features/Auth/Data/DataSource/auth_remote_data_source.dart';
import 'package:flutter_application_1/Features/Auth/Domain/auth_repository.dart';
import 'package:flutter_application_1/core/Error/exception.dart';
import 'package:flutter_application_1/core/Error/failure.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepoImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  const AuthRepoImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, String>> LoginWithEmailPassword(
      {required String email, required String password}) {
    // TODO: implement LoginWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> SignupWithEmailPassword(
      {required String name,
      required String email,
      required String password}) async {
    try {
      final userId = await remoteDataSource.SignupWithEmailPassword(
        name: name,
        email: email,
        password: password,
      );

      return right(userId);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
  }
}
