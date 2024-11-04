import 'package:flutter_application_1/core/Error/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
    Future<Either<Failure,String>> SignupWithEmailPassword({
      required String name,
      required String email,
      required String password,
    });

    Future<Either<Failure,String>> LoginWithEmailPassword({
      required String email,
      required String password,
    });
} 