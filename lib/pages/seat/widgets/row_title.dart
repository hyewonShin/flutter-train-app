import 'package:flutter/material.dart';

class RowTitle extends StatelessWidget {
  const RowTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: Align(
            child: Text(
              'A',
              style: isDarkMode
                  ? Theme.of(context).textTheme.bodyLarge
                  : TextStyle(fontSize: 18),
            ),
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Align(
            child: Text(
              'B',
              style: isDarkMode
                  ? Theme.of(context).textTheme.bodyLarge
                  : TextStyle(fontSize: 18),
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
              style: isDarkMode
                  ? Theme.of(context).textTheme.bodyLarge
                  : TextStyle(fontSize: 18),
            ),
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Align(
            child: Text(
              'D',
              style: isDarkMode
                  ? Theme.of(context).textTheme.bodyLarge
                  : TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
