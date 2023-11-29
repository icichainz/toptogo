
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  
  SharedPref._();
  static late  SharedPreferences  instance;


  static void init()async {
   instance = await SharedPreferences.getInstance() ;
  }
}