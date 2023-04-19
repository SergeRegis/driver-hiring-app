import 'package:flutter/material.dart';

class CustomizeButton extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final Color? textColor;
  final VoidCallback? onPressed;
  const CustomizeButton({super.key, this.buttonText, this.buttonColor, this.onPressed, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 40,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: buttonColor,
              border: Border.all(
                width: 1, 
                color: Color.fromRGBO(76, 175, 80, 1),
                ),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              buttonText!,
              style: TextStyle(
                color: textColor, 
                fontSize: 20,
                ),
            ),
          ),
        ),
      ),
    );
  }
}
