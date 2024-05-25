import 'package:flutter/material.dart';



import 'cake.dart';
class CakeShop extends ChangeNotifier{
  final List<Cake> _shop=[
    Cake(
    name: 'Chocolate Cake',
    price: "3500",
    imagePath:"assets/images/ccake3.jpeg", 
    ),
   
    Cake(
    name: 'Coffee Cake',
    price: "5000",
    imagePath:"assets/images/cocake4.jpeg", 
    ),
    Cake(
    name: 'BlueVelvot Cake',
    price: "6500",
    imagePath:"assets/images/bluevelvotcake5.jpeg", 
    ),
    Cake(
    name: 'Chocolate gatto',
    price: "3500",
    imagePath:"assets/images/cake1.webp", 
    ),

  ];
  List<Cake> _userCart=[];
  List<Cake> get cakeShop=>_shop;
  List<Cake> get usercart=>_userCart;

  void addItemToCart(Cake cake){
    _userCart.add(cake);
    notifyListeners();

    void removeItemFromCart(Cake cake){
      _userCart.remove(cake);
      notifyListeners();
    }
  }

  void removeFromCart(Cake cake) {}




  

}