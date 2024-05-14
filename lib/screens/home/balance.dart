import 'package:flutter/material.dart';
import 'package:mobile_app/utitls/colors.dart';
import 'package:mobile_app/widget/btn/balance_tab_btn.dart';

// Widget Balance() {
//   return Column(
//     children: [
//       Container(
//         margin: const EdgeInsets.symmetric(horizontal: 30),
//         padding: const EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: const Color(0xFF1A1A1A),
//           borderRadius: BorderRadius.circular(10),
//         ),
//         width: double.infinity,
//         child: const Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Total Balance",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 14,
//               ),
//             ),
//             Text(
//               "₣25,000.40",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 32,
//                   fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 28,
//             ),
//             Row(
//               children: [
//                 Text("My Wallet",
//                     style: TextStyle(color: Colors.white, fontSize: 24)),
//                 SizedBox(width: 10),
//                 Icon(Icons.arrow_right_alt_outlined,
//                     color: Colors.white, size: 28),
//               ],
//             ),
//           ],
//         ),
//       ),
//       Image.asset("assets/images/Line.png"),
//       Container(
//         margin: const EdgeInsets.symmetric(horizontal: 30),
//         padding: const EdgeInsets.only(top: 16, right: 16),
//         decoration: BoxDecoration(
//           color: const Color(0xFF1A1A1A),
//           borderRadius: BorderRadius.circular(10),
//         ),
//         width: double.infinity,
//         child: Column(
//           // crossAxisAlignment: CrossAxisAlignment.start,
//           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     Image.asset("assets/images/Vector_3.png"),
//                     const SizedBox(width: 10),
//                     const Text(
//                       "179,000 Points",
//                       style: TextStyle(color: Colors.white, fontSize: 14),
//                     ),
//                   ],
//                 ),
//                 const Row(
//                   children: [
//                     Text(
//                       "My Wallet",
//                       style: TextStyle(color: Colors.white, fontSize: 14),
//                     ),
//                     SizedBox(width: 10),
//                     Icon(
//                       Icons.arrow_right_alt_outlined,
//                       color: Colors.white,
//                       size: 28,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       SizedBox(height: 10),
//       Container(
//         // padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
//         margin: EdgeInsets.symmetric(horizontal: 30),
//         decoration: BoxDecoration(
//           color: AppColors.lightColor,
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         constraints: const BoxConstraints(
//           minHeight: 0,
//           maxHeight: double.infinity,
//         ),
//         child: BalanceTabBtn(),
//       ),
//     ],
//   );
// }

class Balance extends StatefulWidget {
  final VoidCallback? changeRoute;
  const Balance({super.key, required this.changeRoute});

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF1A1A1A),
            borderRadius: BorderRadius.circular(10),
          ),
          width: double.infinity,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total Balance",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              Text(
                "₣25,000.40",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 28,
              ),
              Row(
                children: [
                  Text("My Wallet",
                      style: TextStyle(color: Colors.white, fontSize: 24)),
                  SizedBox(width: 10),
                  Icon(Icons.arrow_right_alt_outlined,
                      color: Colors.white, size: 28),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Image.asset("assets/images/Line.png"),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          padding: const EdgeInsets.only(top: 16, right: 16),
          decoration: BoxDecoration(
            color: const Color(0xFF1A1A1A),
            borderRadius: BorderRadius.circular(10),
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/Vector_3.png"),
                      const SizedBox(width: 5),
                      const Text(
                        "179,000 Points",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        "My Wallet",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.arrow_right_alt_outlined,
                        color: Colors.white,
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          margin: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: AppColors.lightColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          //  constraints: const BoxConstraints(
          //    minHeight: 0,
          //    maxHeight: double.infinity,
          //  ),
          child: BalanceTabBtn(changeRoute: widget.changeRoute),
        ),
      ],
    );
  }
}
