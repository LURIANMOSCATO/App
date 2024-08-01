import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        const Text(
          'Gramado',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            height: 1,
            color: Colors.grey,
            backgroundColor: Colors.black26,
          ),
        ),
        Icon(Ionicons.caret_down),
      ],
    );
  }
}
