import 'package:get/get.dart';

class RewardLayoutController extends GetxController {
  var view = "".obs;

  void showDetails() => view.value = "details";
  void showGift() => view.value = "gift";
  void hidGift() => view.value = "details";
  void hidDetails() => view.value = "";
  void showReward() => view.value = "";
}
