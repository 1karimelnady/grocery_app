import 'package:flutter/material.dart';
import 'package:grocery_app/component/bottom_nav_bar_widget.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Screen'),
      ),
      bottomNavigationBar: buildBottomNavBarWidget(3),
    );
  }
}
