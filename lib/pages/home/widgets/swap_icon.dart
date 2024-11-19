import 'package:flutter/material.dart';

Padding swapIcon(changeStation) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: GestureDetector(
      onTap: () {
        changeStation();
      },
      child: Icon(
        Icons.compare_arrows,
        size: 30,
      ),
    ),
  );
}
