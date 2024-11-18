import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/widgets/row_seat.dart';

class SeatList extends StatelessWidget {
  final void Function(String rowAlpha, int colNum) onSelected;
  final String? selectedRow;
  final int? selectedCol;

  const SeatList({
    super.key,
    required this.onSelected,
    this.selectedRow,
    this.selectedCol,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        children: List.generate(
          20,
          (index) => Column(
            children: [
              RowSeat(
                  index: index + 1,
                  onSelected: onSelected,
                  selectedRow: selectedRow,
                  selectedCol: selectedCol),
              SizedBox(
                height: 8,
              )
            ],
          ),
        ),
      ),
    );
  }
}
