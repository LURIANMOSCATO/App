import 'package:app_desconto/models/category.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, required this.currentCat});
  final String currentCat;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => Container(
            decoration: BoxDecoration(
              color: currentCat == categories[index]
                  ? Colors.grey
                  : Colors.grey[800],
              borderRadius: BorderRadius.circular(3),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            margin: const EdgeInsets.only(right: 15),
            child: Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
                fontSize: 15,
                color: currentCat == categories[index]
                    ? Colors.grey[600]
                    : Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
