import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/widgets/CartAppBar.dart';
import 'package:flutter_application_1/pages/widgets/CartItemSamples.dart';
import 'package:flutter_application_1/pages/widgets/HomeBottomNavBar.dart';
import 'package:flutter_application_1/pages/widgets/OrderWidget.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            padding: EdgeInsets.only(top: 10),
            // decoration: BoxDecoration(
            //   color: Color.fromARGB(255, 139, 151, 179),
            // ),
            child: Column(
              children: [
                CartItemSamples(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF475269).withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 5)
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sub-total",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF475269),
                            ),
                          ),
                          Text(
                            "\$100",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF475269),
                            ),
                          )
                        ],
                      ),
                      Divider(
                        height: 30,
                        thickness: 0.5,
                        color: Color(0xFF475269),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery Free",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF475269),
                            ),
                          ),
                          Text(
                            "\$20",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF475269),
                            ),
                          )
                        ],
                      ),
                      Divider(
                        height: 30,
                        thickness: 0.2,
                        color: Color(0xFF475269),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Discount",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF475269),
                            ),
                          ),
                          Text(
                            "-\$10",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF475269),
                            ),
                          )
                        ],
                      ),
                      Divider(
                        height: 50,
                        thickness: 0.5,
                        color: Color(0xFF475269),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF475269),
                            ),
                          ),
                          Text(
                            "\$110",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 225, 145, 145)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                OrderWidget(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: HomeBottomNavBar(),
    );
  }
}
