import 'package:get/get.dart';
import 'package:nopel_get/app/modules/home/views/homepage.dart';
import '../modules/home/bindings/home_binding.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
