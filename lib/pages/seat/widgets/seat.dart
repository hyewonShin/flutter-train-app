import 'package:flutter/material.dart';

class seat extends StatelessWidget {
  final String? rowAlpha;
  final int? colNum;
  final String? selectedRow;
  final int? selectedCol;
  final void Function(String rowAlpha, int colNum) onSelected;

  const seat({
    super.key,
    this.rowAlpha,
    this.colNum,
    required this.onSelected,
    this.selectedRow,
    this.selectedCol,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Row(
      children: [
        GestureDetector(
          onTap: () {
            onSelected(rowAlpha!, colNum!);
          },
          child: SizedBox(
            width: 50,
            height: 50,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: rowAlpha == selectedRow && colNum == selectedCol
                      ? Colors.purple
                      : isDarkMode
                          ? const Color.fromARGB(255, 74, 70, 70)
                          : Colors.grey[300]!,
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
        ),
      ],
    );
  }
}
