import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Color(0xFFF5F9FD),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF475269),
                          blurRadius: 5,
                          spreadRadius: 1)
                    ]),
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Color(0xFF475269),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF475269),
                        blurRadius: 5,
                        spreadRadius: 1)
                  ]),
              child: Icon(
                Icons.more_vert,
                size: 30,
                color: Color(0xFF475269),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
