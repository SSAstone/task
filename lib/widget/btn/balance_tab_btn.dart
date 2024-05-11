import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/controllers/bottom_navbar.dart';
import 'package:mobile_app/screens/transfer_view.dart';
import 'package:mobile_app/utitls/colors.dart';

class BalanceTabBtn extends StatefulWidget {
  const BalanceTabBtn({super.key});

  @override
  State<BalanceTabBtn> createState() => _BalanceTabBtnState();
}

class _BalanceTabBtnState extends State<BalanceTabBtn> {
  final BottomNavbar controller = Get.put(BottomNavbar());

  @override
  void initState() {
    super.initState();
    print(controller.showTransfer);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: const Row(
            children: [
              Icon(
                Icons.account_balance_wallet_outlined,
              ),
              SizedBox(width: 10),
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
          width: 1,
          height: 36,
          color: AppColors.darkColor,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: InkWell(
            onTap: () => Get.to(() => TransferView()),
            child: const Row(
              children: [
                Icon(
                  Icons.call_split_outlined,
                ),
                SizedBox(width: 10),
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
          width: 1,
          height: 36,
          color: AppColors.darkColor,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: const Row(
            children: [
              Icon(
                Icons.more_horiz_outlined,
              ),
              SizedBox(width: 10),
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
