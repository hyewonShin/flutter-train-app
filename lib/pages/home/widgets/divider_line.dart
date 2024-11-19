import 'package:flutter/material.dart';

class DividerLine extends StatelessWidget {
  const DividerLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Container(
        width: 1,
        height: 50,
        color: Colors.grey[400],
      ),
    );
  }
}
