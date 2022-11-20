import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget{
  CustomInput({required this.icon, required this.message, required this.controller_, required this.isPassword});
  final IconData? icon;
  final String? message;
  var controller_;
  final bool isPassword;


  @override
  Widget build(BuildContext context){
    return Container(
      width: 350,
      height: 70,
      decoration: BoxDecoration(
        color: Color.fromRGBO(195, 51, 127, 1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 40,
            ),
            SizedBox(width: 15),
            Expanded(
              child: TextField(
                cursorColor: Colors.transparent,
                obscureText: isPassword,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: message,


                ),
                controller: controller_,
                keyboardType: TextInputType.emailAddress,

              ),
            )
          ],
        ),
      ),
    );
  }

}