import 'package:flutter/material.dart';

Widget Transaction_card(
  String title,
  String subtitle,
  String amount,
  Color color,
) {
  return Card(
    child: ListTile(
      leading: const Icon(Icons.wallet),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text(
        amount,
        style: TextStyle(color: color, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
