import 'package:flutter/material.dart';

class PickedStation extends StatelessWidget {
  final String? departStation;
  final String? arrivalStation;

  const PickedStation({
    super.key,
    required this.departStation,
    required this.arrivalStation,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          departStation!,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple),
        ),
        Icon(
          Icons.arrow_circle_right_outlined,
          size: 30,
        ),
        Text(
          arrivalStation!,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple),
        ),
      ],
    );
  }
}
