import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_app/utitls/colors.dart';

class PrimaryBtn extends StatefulWidget {
  final String title;
  final void Function()? onTopPressed;
  final Map ? style;
  final Widget ? icon;
  const PrimaryBtn({super.key, required this.title, required this.onTopPressed, this.style, this.icon});


  @override
  State<PrimaryBtn> createState() => _PrimaryBtnState();
}

class _PrimaryBtnState extends State<PrimaryBtn> {
  get onTopPressed => null;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTopPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: widget.style != null ? widget.style!['color'] : AppColors.lightColor,
          borderRadius: BorderRadius.circular(10.0),
          // boxShadow: [
          //   BoxShadow(
          //     color: AppColors.primaryColor.withOpacity(0.5),
          //     blurRadius: 10,
          //     offset: const Offset(5, 7),
          //     spreadRadius: 5,
          //   )
          // ],
        ),
        child: Row(
          children: [
             if (widget.icon != null) ...[
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: widget.icon!,
              ),
              // SizedBox(width: 10),
            ],
            Expanded(
              child: Text(
                widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: widget.style != null ? widget.style!['textColor'] : AppColors.darkColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
