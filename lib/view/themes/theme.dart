import 'package:flutter/material.dart';
import 'package:get/get.dart';

var loginButtonStyle = TextButton.styleFrom(
  backgroundColor: const Color.fromARGB(255, 236, 135, 169),
  minimumSize: Size(Get.width, 50),
);

const appbarHeight = 60.0;

//paddings
const cardInnerPadding = 10.0;
const loginFormPaddingFromTop = 150.0;
const loginLayoutPadding = 8.0;
const formFieldPadding = 15.0;
const appbarCircleAvatarPadding = 8.0;
const userCardPadding = EdgeInsets.all(16.0);
const userInfoCardInnerPadding = EdgeInsets.all(16.0);
const greetingSectionPadding = EdgeInsets.all(16.0);
const greetingCardPadding = EdgeInsets.all(16.0);
const greetingTextPadding = EdgeInsets.all(30.0);
const friendSectionPadding = EdgeInsets.all(16.0);
const friendButtonPadding = EdgeInsets.all(8.0);
//colors
const userInfoCardColor = Color.fromARGB(255, 241, 181, 251);
const userInfoCardBorderColor = Color.fromARGB(255, 161, 110, 170);
const loginButtonTextStyle = TextStyle(color: Colors.black);
const greetingCardColor = Colors.blue;
const profileEditButtonTextColor = TextStyle(color: Colors.white);
//textstyles
const greetingTextStyle = TextStyle(
  color: Colors.white,
);
const friendButtonTextStyle = TextStyle(color: Colors.white, fontSize: 11);

//shapes
const userInfoCardShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(30)),
  side: BorderSide(
    color: userInfoCardBorderColor,
  ),
);

const greetingCardShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(16),
  ),
  side: BorderSide(
    color: Colors.blueGrey,
  ),
);

//button styles
var friendButtonStyle = TextButton.styleFrom(
  backgroundColor: Colors.blue,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.elliptical(100, 50),
    ),
    side: BorderSide(color: Colors.black),
  ),
);

var profileEditButtonStyle = TextButton.styleFrom(
  backgroundColor: Colors.green,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.elliptical(100, 50)),
    side: BorderSide(color: Colors.blue),
  ),
);

//textfields decorations
var textfieldDecoration = InputDecoration(
  fillColor: const Color.fromARGB(255, 176, 228, 241),
  filled: true,
  contentPadding: const EdgeInsets.symmetric(
    vertical: 20,
    horizontal: 12,
  ),
  labelStyle: const TextStyle(
    color: Colors.grey,
  ),
  prefixIconConstraints: const BoxConstraints(minWidth: 60),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(
      color: Color.fromARGB(255, 106, 221, 250),
      width: 0.9,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(
      color: Color.fromRGBO(69, 230, 123, 1),
      width: 2,
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: Colors.red),
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: Colors.white),
  ),
);
