import 'package:flutter/material.dart';

class RowSeat extends StatelessWidget {
  final int index;
  final void Function(String rowAlpha, int colNum) onSelected;
  final String? selectedRow;
  final int? selectedCol;

  const RowSeat({
    super.key,
    required this.index,
    required this.onSelected,
    this.selectedRow,
    this.selectedCol,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        seat(
            rowAlpha: 'A',
            colNum: index,
            onSelected: onSelected,
            selectedRow: selectedRow,
            selectedCol: selectedCol),
        SizedBox(
          width: 4,
        ),
        seat(
            rowAlpha: 'B',
            colNum: index,
            onSelected: onSelected,
            selectedRow: selectedRow,
            selectedCol: selectedCol),
        SizedBox(
          width: 50,
          height: 50,
          child: Center(
            child: Text(
              index.toString(),
              textAlign: TextAlign.center,
              style: isDarkMode
                  ? Theme.of(context).textTheme.labelMedium
                  : TextStyle(fontSize: 18),
            ),
          ),
        ),
        seat(
            rowAlpha: 'C',
            colNum: index,
            onSelected: onSelected,
            selectedRow: selectedRow,
            selectedCol: selectedCol),
        SizedBox(
          width: 4,
        ),
        seat(
            rowAlpha: 'D',
            colNum: index,
            onSelected: onSelected,
            selectedRow: selectedRow,
            selectedCol: selectedCol),
      ],
    );
  }
}

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
