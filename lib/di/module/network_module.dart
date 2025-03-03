import 'package:iupac_reader/data/remote/datasources/api_service.dart';
import 'package:iupac_reader/env.dart';
import 'package:iupac_reader/di/provider/dio_provider.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  @Singleton(as: BaseApiService)
  ApiService provideApiService(DioProvider dioProvider) {
    return ApiService(
      dioProvider.getDio(),
      baseUrl: Env.restApiEndpoint,
    );
  }
}
