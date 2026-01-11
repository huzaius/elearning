import 'package:elearning/models/category.dart';
import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  final Category category;
  const CategoryIcon({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,

            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(blurStyle: BlurStyle.outer, color: Colors.grey[600]!),
              ],
              color: Colors.white,
              shape: BoxShape.circle,
            ),

            child: Center(child: Icon(category.categoryIcon)),
          ),
          Text(
            category.categoryTitle,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize:12,fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
