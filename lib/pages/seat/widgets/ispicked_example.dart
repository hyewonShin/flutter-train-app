import 'package:flutter/material.dart';

class IsPickedExample extends StatelessWidget {
  const IsPickedExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: Colors.purple, borderRadius: BorderRadius.circular(8)),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          isDarkMode
              ? Text(
                  '선택됨',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )
              : Text('선택됨'),
          SizedBox(
            width: 20,
          ),
          SizedBox(
            width: 24,
            height: 24,
            child: DecoratedBox(
                decoration: BoxDecoration(
                    color: Colors.grey[300]!,
                    borderRadius: BorderRadius.circular(8))),
          ),
          SizedBox(
            width: 4,
          ),
          isDarkMode
              ? Text(
                  '선택안됨',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )
              : Text('선택안됨'),
        ],
      ),
    );
  }
}
