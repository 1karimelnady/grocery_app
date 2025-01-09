import 'package:flutter/material.dart';
import 'package:grocery_app/component/bottom_nav_bar_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      bottomNavigationBar: buildBottomNavBarWidget(2),
    );
  }
}
