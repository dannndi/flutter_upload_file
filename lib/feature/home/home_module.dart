import 'package:flutter_upload_file/feature/home/repository/home_repository.dart';
import 'package:flutter_upload_file/feature/home/repository/home_repository_impl.dart';
import 'package:get_it/get_it.dart';

class HomeModule {
  static void init() {
    GetIt.I.registerSingleton<HomeRepository>(
      HomeRepositoryImpl(client: GetIt.I.get()),
    );
  }
}
