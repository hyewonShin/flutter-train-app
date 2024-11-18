import 'package:flutter/material.dart';

class IsPickedExample extends StatelessWidget {
  const IsPickedExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
          Text('선택됨'),
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
          Text('선택안됨'),
        ],
      ),
    );
  }
}
