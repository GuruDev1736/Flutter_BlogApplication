import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Error/exception.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDataSource {
  Future<String> SignupWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<String> LoginWithEmailPassword({
    required String email,
    required String password,
  });
}

class DataSourceImplementation implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;
  DataSourceImplementation(this.supabaseClient);

  @override
  Future<String> LoginWithEmailPassword({
    required String email,
    required String password,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<String> SignupWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await supabaseClient.auth
          .signUp(password: password, email: email, data: {
        'name': name,
      });

      if (response.user == null) {
        throw ServerException("User is Null");
      }
      return response.user!.id;
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
