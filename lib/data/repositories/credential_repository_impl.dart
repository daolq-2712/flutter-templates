import 'package:iupac_reader/data/remote/datasources/api_service.dart';
import 'package:iupac_reader/domain/exceptions/network_exceptions.dart';
import 'package:iupac_reader/domain/models/user.dart';
import 'package:iupac_reader/domain/repositories/credential_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CredentialRepository)
class CredentialRepositoryImpl extends CredentialRepository {
  final BaseApiService _apiService;

  CredentialRepositoryImpl(this._apiService);

  @override
  Future<List<User>> getUsers() async {
    try {
      final userResponses = await _apiService.getUsers();
      return userResponses
          .map((userResponse) => userResponse.toUser())
          .toList();
    } catch (exception) {
      throw NetworkExceptions.fromDioException(exception);
    }
  }
}
