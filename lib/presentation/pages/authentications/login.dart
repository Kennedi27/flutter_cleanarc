import 'package:clean_arc/presentation/widgets/box_widget.dart';
import 'package:clean_arc/presentation/widgets/form/button_widget.dart';
import 'package:clean_arc/presentation/widgets/form/text_input.dart';
import 'package:flutter/material.dart';

import '../../../config/theme/colors_config.dart';
import '../../../config/theme/size_config.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: paddingXXL),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: screenHeight * 0.4),
                TextInputCustomWithLabel(
                    inputController: _emailController,
                    inputTopLabel: 'Email',
                    inputHeight: 50,
                    inputWidth: screenWidth,
                    inputBorderRadius: 10,
                    inputBgColor: primaryColor10,
                    inputPlaceHolder: 'username',
                    inputLeftIcon: Icon(
                      Icons.person,
                      color: FocusScope.of(context).isFirstFocus
                          ? primaryColor
                          : secondaryColor,
                    ),
                    inputRightIcon: const Icon(Icons.person),
                    inputLength: 14),
                const SizedBox(
                  height: 25,
                ),
                TextInputCustomWithLabel(
                    inputController: _passwordController,
                    inputTopLabel: 'Password',
                    inputHeight: 50,
                    inputWidth: screenWidth,
                    inputBorderRadius: 10,
                    inputBgColor: primaryColor10,
                    inputPlaceHolder: 'Password',
                    isPassword: true,
                    obscureText: true,
                    inputLeftIcon: Icon(
                      Icons.vpn_key,
                      color: FocusScope.of(context).isFirstFocus
                          ? primaryColor
                          : secondaryColor,
                    )),
                const SizedBox(
                  height: 25,
                ),
                CustomButton(
                  onTap: () {
                    // getValueForm();
                    Navigator.pushNamed(context, '/home');
                  },
                  borderRadius: 5.0,
                  buttonText: 'Login',
                  buttonPadding: 12,
                ),
                const SizedBox(height: 30),
                const Text(
                  'Or Sign Up With',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BoxSizeWidget(
                      boxBorderColor: Colors.grey,
                      boxRadius: 10,
                      child: const Icon(
                        Icons.facebook,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 20),
                    BoxSizeWidget(
                      boxBorderColor: Colors.grey,
                      boxRadius: 10,
                      child: const Icon(
                        Icons.flutter_dash,
                        color: primaryColor,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 20),
                    BoxSizeWidget(
                      boxBorderColor: Colors.grey,
                      boxRadius: 10,
                      child: const Icon(
                        Icons.apple,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                // TextInputDateTimeCustomWithLabel(
                //     inputController: dateController,
                //     inputTopLabel: 'Date Test',
                //     inputHeight: 50,
                //     inputWidth: screenWidth,
                //     inputBorderRadius: 10,
                //     inputBgColor: primaryColor10,
                //     inputPlaceHolder: 'Select Date',
                //     readOnly: true,
                //     inputOnTap: () {
                //       _chooseDate(context);
                //     },
                //     inputLeftIcon: Icon(
                //       Icons.calendar_month,
                //       color: FocusScope.of(context).isFirstFocus
                //           ? primaryColor
                //           : secondaryColor,
                //     )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void _chooseDate(BuildContext context) async {
  //   DateTime? selectedDate = await showDatePicker(
  //     context: context,
  //     initialDate: dateSelected,
  //     firstDate: DateTime.now(),
  //     lastDate: DateTime.now().add(const Duration(days: 365)),
  //     helpText: 'Select booking date',
  //     // Can be used as title
  //     cancelText: 'Cancel',
  //     confirmText: 'Confirm',
  //   );
  //   if (selectedDate != null) {
  //     setState(() {
  //       dateSelected = selectedDate;
  //       dateController.text = DateFormat('dd MMM yyyy').format(selectedDate);
  //     });
  //   }
  // }

  void getValueForm() {
    var x = {
      'Email': _emailController.text,
      'Password': _passwordController.text,
    };

    // ignore: avoid_print
    return print(x);
  }
}
