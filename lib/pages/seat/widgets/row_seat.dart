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
    var rowAlphaTextStyle = Theme.of(context).textTheme.bodyLarge;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Seat(
            rowAlpha: 'A',
            colNum: index,
            onSelected: onSelected,
            selectedRow: selectedRow,
            selectedCol: selectedCol),
        SizedBox(
          width: 4,
        ),
        Seat(
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
              style: rowAlphaTextStyle,
            ),
          ),
        ),
        Seat(
            rowAlpha: 'C',
            colNum: index,
            onSelected: onSelected,
            selectedRow: selectedRow,
            selectedCol: selectedCol),
        SizedBox(
          width: 4,
        ),
        Seat(
            rowAlpha: 'D',
            colNum: index,
            onSelected: onSelected,
            selectedRow: selectedRow,
            selectedCol: selectedCol),
      ],
    );
  }
}

class Seat extends StatelessWidget {
  final String? rowAlpha;
  final int? colNum;
  final String? selectedRow;
  final int? selectedCol;
  final void Function(String rowAlpha, int colNum) onSelected;

  const Seat({
    super.key,
    this.rowAlpha,
    this.colNum,
    required this.onSelected,
    this.selectedRow,
    this.selectedCol,
  });

  @override
  Widget build(BuildContext context) {
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
                      : Theme.of(context).disabledColor,
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
        ),
      ],
    );
  }
}
