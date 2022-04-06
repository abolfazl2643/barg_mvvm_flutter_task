import 'package:flutter/material.dart';
import 'package:get/get.dart';

var loginButtonStyle = TextButton.styleFrom(
  backgroundColor: const Color.fromARGB(255, 236, 135, 169),
  minimumSize: Size(Get.width, 50),
);

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
