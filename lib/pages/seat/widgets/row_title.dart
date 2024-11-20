import 'package:flutter/material.dart';

class RowTitle extends StatelessWidget {
  const RowTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var rowTitleTextStyle =
        Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 18);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: Align(
            child: Text('A', style: rowTitleTextStyle),
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Align(
            child: Text('B', style: rowTitleTextStyle),
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
            child: Text('C', style: rowTitleTextStyle),
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Align(
            child: Text('D', style: rowTitleTextStyle),
          ),
        ),
      ],
    );
  }
}
