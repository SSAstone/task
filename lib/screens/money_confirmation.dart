import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_app/utitls/colors.dart';
import 'package:mobile_app/widget/btn/primary_btn.dart';

class MoneyConfirmation extends StatefulWidget {
  final void Function()? changeRoute;
  final void Function()? backRoute;
  const MoneyConfirmation({super.key , this.changeRoute, this.backRoute});

  @override
  State<MoneyConfirmation> createState() => _MoneyConfirmationState();
}

class _MoneyConfirmationState extends State<MoneyConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              'Money Sent!',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              '20',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => {
              widget.backRoute?.call(),
            },
            icon: const Text("Close", style: TextStyle(color: AppColors.lightColor)),
          ),
          SizedBox(width: 20),
        ],
        backgroundColor: AppColors.darkColor,
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Receiver",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 6,
            ),
            const Opacity(
              opacity: 0.7,
              child: Text(
                "Shater Tsavsar",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFF4F1EB),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Amount",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 6,
            ),
            const Opacity(
              opacity: 0.7,
              child: Text(
                "₣15,000",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFF4F1EB),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Comment",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 6,
            ),
            const Opacity(
              opacity: 0.7,
              child: Text(
                "Test",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFF4F1EB),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Date",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 6,
            ),
            const Opacity(
              opacity: 0.7,
              child: Text(
                "03/02/2024",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFF4F1EB),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Transaction Code:",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 6,
            ),
            const Opacity(
              opacity: 0.7,
              child: Text(
                "2PR yJRH18JI i1NNuwwb mZVJ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFF4F1EB),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Expanded(child: SizedBox()),
            PrimaryBtn(
              title: 'Print Receipt',
              onTopPressed: () {},
            ),
          ],
        ),
      ),
     
    );
  }
}
