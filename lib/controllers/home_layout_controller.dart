import 'package:get/get.dart';

class HomeLayoutController extends GetxController {  
  final RxString view = "".obs;

  void showTransferView() => view.value = "transfer";
  void showAccount() => view.value = "account";
  void showSelectView() => view.value = "select";
  void showMoney() => view.value = "money";
  void showMoneyConfirm() => view.value = "send";
  void hiddenMoneyConfirm() => view.value = "select";
  void hiddenTransferView() => view.value = "";
  void hiddenAccount() => view.value = "";
  void hiddenSelectView() => view.value = "transfer";
  void hiddenShowMoney() => view.value = "account";
  void hiddenConfirm() => view.value = "money";
}