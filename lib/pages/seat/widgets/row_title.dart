import 'package:flutter/material.dart';

class RowTitle extends StatelessWidget {
  const RowTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: Align(
            child: Text(
              'A',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Align(
            child: Text(
              'B',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Align(
            child: Text(
              'C',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Align(
            child: Text(
              'D',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
