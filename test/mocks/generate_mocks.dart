import 'package:dio/dio.dart';
import 'package:iupac_reader/data/remote/datasources/api_service.dart';
import 'package:iupac_reader/domain/repositories/credential_repository.dart';
import 'package:iupac_reader/domain/usecases/get_users_use_case.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  ApiService,
  CredentialRepository,
  DioError,
  GetUsersUseCase,
])
main() {
  // empty class to generate mock repository classes
}
