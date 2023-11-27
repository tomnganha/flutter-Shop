import 'package:flutter/material.dart';

class myTextFiled extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final String icon;

  const myTextFiled(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 55,
      decoration: BoxDecoration(
          color: Color(0xFFF5F9FD),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Color(0xFF475629), blurRadius: 5, spreadRadius: 1)
          ]),
      child: Row(
        children: [
          Icon(
            icon == 'user' ? Icons.person : Icons.lock,
            size: 27,
            color: Color(0xFF475269),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            width: 250,
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
              ),
            ),
          )
        ],
      ),
    );
  }
}
