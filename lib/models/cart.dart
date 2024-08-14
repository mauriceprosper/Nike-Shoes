import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: "Air Jordan",
      description: "Lead your kiddo into the heart of sneaker culture with these scaled-down J's.",
      imageUrl: "lib/images/shoe1.png",
      price: 234.00,
    ),
    Shoe(
      name: "Air Max",
      description: "Lead your kiddo into the heart of sneaker culture with these scaled-down J's.",
      imageUrl: "lib/images/shoe2.png",
      price: 565.00,
    ),
    Shoe(
      name: "Zoom Freak",
      description: "Lead your kiddo into the heart of sneaker culture with these scaled-down J's.",
      imageUrl: "lib/images/shoe3.png",
      price: 564.00,
    ),
    Shoe(
      name: "KD Treyse",
      description: "Lead your kiddo into the heart of sneaker culture with these scaled-down J's.",
      imageUrl: "lib/images/shoe4.png",
      price: 329.00,
    )
  ];

  List<Shoe> cart = [];

  List<Shoe> getShoeList(){
    return shoeShop;
  }

  List<Shoe> getUserCart(){
    return cart;
  }

  void addToCart(Shoe shoe){
    cart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe){
    cart.remove(shoe);
    notifyListeners();
  }
}
