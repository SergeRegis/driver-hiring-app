import 'package:flutter/material.dart';

class CustomizedTextfield extends StatelessWidget {
  final TextEditingController myController;
  final String? hintText;
  final bool? isPassword;
  const CustomizedTextfield({super.key, required this.myController, this.hintText, this.isPassword});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: isPassword!
               ? TextInputType.visiblePassword
               : TextInputType.emailAddress,
              enableSuggestions: isPassword!? false: true,
              autocorrect: isPassword!? false: true,
              obscureText: isPassword?? true,
              controller: myController,
              decoration: InputDecoration(
                suffixIcon: isPassword! ? IconButton(
                  icon: const Icon(Icons.visibility, color: Colors.grey,), onPressed: () {

                }
                ): null,

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffEBECF4), 
                    width: 1),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffEBECF4), 
                    width: 1),
                ),


                fillColor: const Color(0xffE8ECF4),
                filled: true, 
                hintText: hintText, 
                hintStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black),
                ),
              
              
              ),
            ),
          );
  }
}