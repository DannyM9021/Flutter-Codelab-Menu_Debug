import 'package:flutter/material.dart';

void main() {
  runApp(Menu());
}

class MenuItem extends StatelessWidget {
  const MenuItem(this.icon, this.itemText, {super.key});
  final String icon;
  final String itemText;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        icon,
        style: const TextStyle(
          fontSize: 30.0,
        ),
      ),
      title: Text(itemText),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menu Demo"),
        ),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Example1(),
            ],
          ),
        ),
      )
    );
  }
}

// Problem 1: Overflow error
class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 30.0),
      child: Row(
        children: [
          Text(
            'Explore the restaurant\'s delicious menu items below!',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}

// Problem 2: Viewport was given unbounded height error
class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        MenuItem('🍔', 'Burger'),
        MenuItem('🌭', 'Hot Dog'),
        MenuItem('🍟', 'Fries'),
        MenuItem('🥤', 'Soda'),
        MenuItem('🍦', 'Ice Cream'),
      ],
    );
  }
}