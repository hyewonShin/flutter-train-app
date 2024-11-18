import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/widgets/ispicked_example.dart';
import 'package:flutter_train_app/pages/seat/widgets/picked_station.dart';
import 'package:flutter_train_app/pages/seat/widgets/reservation_btn.dart';
import 'package:flutter_train_app/pages/seat/widgets/row_title.dart';
import 'package:flutter_train_app/pages/seat/widgets/seat_list.dart';

class SeatPage extends StatefulWidget {
  final String? departStation;
  final String? arrivalStation;

  const SeatPage({
    super.key,
    required this.departStation,
    required this.arrivalStation,
  });

  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  String? selectedRow;
  int? selectedCol;
  String? rowAlpha;
  int? colNum;

  void onSelected(String rowAlpha, int colNum) {
    setState(() {
      selectedRow = rowAlpha;
      selectedCol = colNum;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          title: Text('좌석 선택'),
        ),
        body: Column(
          children: [
            PickedStation(
              departStation: widget.departStation,
              arrivalStation: widget.arrivalStation,
            ),
            IsPickedExample(),
            RowTitle(),
            SeatList(
                onSelected: onSelected,
                selectedRow: selectedRow,
                selectedCol: selectedCol),
            ReservationBtn(
                rowAlpha: rowAlpha,
                colNum: colNum,
                selectedRow: selectedRow,
                selectedCol: selectedCol)
          ],
        ));
  }
}
