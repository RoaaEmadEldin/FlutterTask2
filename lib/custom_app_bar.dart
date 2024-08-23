import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String username;

  const CustomAppBar({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        title: Center(
          child: Text(
            '@$username',
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(backgroundColor: Colors.white),
              child: const Text('Follow'),
            ),
          )
        ],
        backgroundColor: Colors.deepPurple[200],
        elevation: 10);
  }

  @override
  final Size preferredSize = const Size.fromHeight(56);
}
