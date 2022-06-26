import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/cart_screen/cart_screen.dart';
import '../screens/home_screen/home_screen.dart';
import '../screens/profile_screen/profile_screen.dart';

class ControllController extends GetxController{
  Widget _currentScreen =  HomeScreen();
  int _navigatorValue = 0;

  get navigatorValue => _navigatorValue;
  get currentScreen => _currentScreen;
  void changeSelectedValue(int selectedValue){
    _navigatorValue = selectedValue;
    switch (selectedValue){
      case 0 :{
        _currentScreen =  HomeScreen();
        break;
      }case 1 :{
      _currentScreen =  CartScreen();
      break;
    }case 2 :{
      _currentScreen = const ProfileScreen();
      break;
    }
    }
    update();
  }
}