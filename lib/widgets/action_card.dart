import 'package:flutter/material.dart';

Widget Actioncard(IconData icon, String title) {
  return Column(
    children: [
      Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(child: Icon(icon, color: Colors.blue, size: 30)),
      ),
      const SizedBox(height: 8),
      Text(title),
    ],
  );
}
