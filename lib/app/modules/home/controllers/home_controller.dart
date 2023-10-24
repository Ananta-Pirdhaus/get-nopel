import 'package:get/get.dart';
import 'package:nopel_get/app/modules/home/views/home.dart';
import 'package:nopel_get/app/modules/home/views/inbox.dart';
import 'package:nopel_get/app/modules/home/views/plus.dart';
import 'package:nopel_get/app/modules/home/views/profile.dart';
import 'package:nopel_get/app/modules/home/views/search.dart';

class HomeController extends GetxController {
  void navigateToUserHomePage() {
    Get.to(() => UserHomePage());
  }

  void navigateToUserSearchPage() {
    Get.to(() => UserSearchPage());
  }

  void navigateToUserPlusPage() {
    Get.to(() => UserPlusPage());
  }

  void navigateToUserInboxPage() {
    Get.to(() => UserInboxPage());
  }

  void navigateToUserProfilePage() {
    Get.to(() => UserProfilePage());
  }
}
