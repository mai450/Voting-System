import 'package:flutter/material.dart';

class CustomPassowrdText extends StatefulWidget {
  const CustomPassowrdText({super.key});

  @override
  State<CustomPassowrdText> createState() => _CustomPassowrdTextState();
}

class _CustomPassowrdTextState extends State<CustomPassowrdText> {
  @override
  Widget build(BuildContext context) {
    bool _obscureText = true;
    TextEditingController ConfirmPassword = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        controller: ConfirmPassword,
        validator: (value) {
          if (ConfirmPassword.text.isEmpty) {
            return "should enter Password";
          }
        },
        obscureText: _obscureText,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          hintText: 'Password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
                width: 1, color: Color.fromRGBO(199, 199, 199, 1)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF008753),
            ), // Color when focused
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red), // Color when error
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon:
                  Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
          ),
        ),
      ),
    );
    ;
  }
}
