import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool hide;
  final IconData myIcon;

  const LoginTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.hide,
    required this.myIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hide,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(
          myIcon,
          color: Colors.black,
        ),
        iconColor: Colors.black,
        labelStyle: const TextStyle(color: Colors.grey),
        labelText: labelText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
      ),
      // validator: ((value) {
      //   if (value == null || value.isEmpty) {
      //     return 'Ovo polje ne moze biti prazno!';
      //   }
      // }),
    );
  }
}
