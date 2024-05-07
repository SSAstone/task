import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_app/screens/home/home_view.dart';
import 'package:mobile_app/utitls/colors.dart';
import 'package:mobile_app/widget/btn/primary_btn.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  String enteredPin = '';
    TextEditingController pinController = TextEditingController();

  void addNumber(String number) {
    if (enteredPin.length < 4) {
      setState(() {
        enteredPin += number;
        pinController.text = enteredPin;
      });
    }
  }

  void deleteNumber() {
    if (enteredPin.isNotEmpty) {
      setState(() {
        enteredPin = enteredPin.substring(0, enteredPin.length - 1);
        pinController.text = enteredPin;
      });
    }
  }
  void clearNumber() {
    if (enteredPin.isNotEmpty) {
      setState(() {
        enteredPin = "";
        pinController.text = "";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightColor,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 64,),
              Image.asset(
                "assets/images/Vector_2.png",
                height: 28,
                width: 22,
              ),
              const Text(
                "Enter your Pin",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: pinController,
                obscureText: true,
                readOnly: true,
                keyboardType: TextInputType.number,
                // maxLength: 4,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                    border: InputBorder.none),
              ),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                padding: EdgeInsets.all(30),
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                children: List.generate(
                  12,
                  (index) => _buildNumberButton((index + 1).toString()),
                ),
              ),
              Container(
                padding: EdgeInsets.only( top: 10, bottom: 50),
                child: Column(
                  children: [
                    PrimaryBtn(
                      title: 'Confirm',
                      onTopPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeView(),
                          ),
                        );
                      },
                      style: const {
                        'color': AppColors.darkColor,
                        'textColor': AppColors.lightColor,
                      }
                    ),
                    SizedBox(height: 20),
                    PrimaryBtn(
                      title: 'Forgot Pin?',
                      onTopPressed: () => {},
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNumberButton(String number) {
    return ElevatedButton(
      onPressed: () => {
        if (number == '10')
          {clearNumber()}
        else if (number == '11')
          {addNumber('0')}
        else if (number == '12')
         { deleteNumber()} else
          {addNumber(number)}
      },
      child: number == '10'
          ? const Icon(Icons.clear)
          : number == '11'
              ? const Text('0')
              : number == '12'
                  ? const Icon(Icons.backspace)
                  : Text(number),
    );
  }
}
