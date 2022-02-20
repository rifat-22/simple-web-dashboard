import 'package:get/get.dart';
import 'package:first_web_app/routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = overviewPageDisplayName.obs;
  var hoverItem = "".obs;
}
