import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/cart_screen.dart';
import '../../view/home_screen.dart';
import '../../view/profile_screen.dart';

class ControlViewModel extends GetxController{
  Widget _currentScreen =  const HomeScreen();
  int _navigatorValue = 0;

  get navigatorValue => _navigatorValue;
  get currentScreen => _currentScreen;
  void changeSelectedValue(int selectedValue){
    _navigatorValue = selectedValue;
    switch (selectedValue){
      case 0 :{
        _currentScreen =  const HomeScreen();
        break;
      }case 1 :{
      _currentScreen =  const CartScreen();
      break;
    }case 2 :{
      _currentScreen = const ProfileScreen();
      break;
    }
    }
    update();
  }
}