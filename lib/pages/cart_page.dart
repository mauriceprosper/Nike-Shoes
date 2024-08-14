import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../components/cart_item.dart';
import '../models/shoe.dart';
import '../models/cart.dart'; // Import your Cart model

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Cart!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: ListView.builder(
                itemCount: cart.getUserCart().length, // Accessing cart to get the items
                itemBuilder: (context, index) {
                  Shoe individualShoe = cart.getUserCart()[index]; // Corrected variable name
                  return CartItem(shoe: individualShoe);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
