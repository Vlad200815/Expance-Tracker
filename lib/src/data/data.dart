import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> myTransactionData = [
  {
    "icon": const FaIcon(FontAwesomeIcons.burger, color: Colors.white),
    "color": Colors.yellow[700],
    "name": "Food",
    "totalAmount": "-\$45.00",
    'date': "Today",
  },
  // {
  //   "icon": const FaIcon(FontAwesomeIcons.gamepad),
  //   "color": Colors.red,
  //   "name": "Entertaiment",
  //   "totalAmount": "-\$50.00",
  //   'date': "Yesterday",
  // },
  {
    "icon": const FaIcon(FontAwesomeIcons.cartShopping, color: Colors.white),
    "color": const Color(0XFFE064F7),
    "name": "Shopping",
    "totalAmount": "-\$145.00",
    'date': "Today",
  },
  {
    "icon":
        const FaIcon(FontAwesomeIcons.heartCircleCheck, color: Colors.white),
    "color": Colors.green,
    "name": "Health",
    "totalAmount": "-\$15.30",
    'date': "Yesterday",
  },
  {
    "icon": const FaIcon(FontAwesomeIcons.plane, color: Colors.white),
    "color": const Color(0XFF00B3E7),
    "name": "Travel",
    "totalAmount": "-\$300.00",
    'date': "Yesterday",
  },
];
