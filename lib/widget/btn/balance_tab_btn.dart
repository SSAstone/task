import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/controllers/home_layout_controller.dart';
// import 'package:get/get.dart';
// import 'package:mobile_app/screens/layout/home_layout.dart';
import 'package:mobile_app/utitls/colors.dart';
// import 'package:mobile_app/utitls/routers.dart';

class BalanceTabBtn extends StatelessWidget {
  final VoidCallback? changeRoute;
  BalanceTabBtn({super.key, this.changeRoute});

  // final HomeController controller = Get.put(HomeController());
    final HomeLayoutController controller = Get.put(HomeLayoutController());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          // padding: const EdgeInsets.symmetric(horizontal: 10),
          child: const Row(
            children: [
              Icon(
                Icons.account_balance_wallet_outlined, size: 16,
              ),
              SizedBox(width: 3),
              Text(
                "Top up",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 3),
          width: 1,
          height: 36,
          color: AppColors.darkColor,
        ),
        Container(
          // padding: const EdgeInsets.symmetric(horizontal: 10),
          child: InkWell(
            onTap: () => controller.showTransferView(),
            // onTap: () => Get.toNamed(Routers.transferView),
            child: const Row(
              children: [
                Icon(
                  Icons.call_split_outlined,  size: 16
                ),
                SizedBox(width: 3),
                InkWell(
                  child: Text(
                    "Transfer",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 3),
          width: 1,
          height: 36,
          color: AppColors.darkColor,
        ),
        Container(
          // padding: const EdgeInsets.symmetric(horizontal: 10),
          child: const Row(
            children: [
              Icon(
                Icons.more_horiz_outlined,  size: 16
              ),
              SizedBox(width: 3),
              Text(
                "More",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
