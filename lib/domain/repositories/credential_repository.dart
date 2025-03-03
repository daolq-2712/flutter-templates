import 'package:iupac_reader/domain/models/user.dart';

abstract class CredentialRepository {
  Future<List<User>> getUsers();
}
