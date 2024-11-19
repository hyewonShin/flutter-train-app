import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/seat_page.dart';

class SeatSelectionBtn extends StatelessWidget {
  const SeatSelectionBtn({
    super.key,
    required this.departStation,
    required this.arrivalStation,
  });

  final String? departStation;
  final String? arrivalStation;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (departStation != null && arrivalStation != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return SeatPage(
                    departStation: departStation,
                    arrivalStation: arrivalStation);
              },
            ),
          );
        } else {
          print('출발역과 도착역 모두 선택해주세요 !');
        }
      },
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.purple,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      child: Text('좌석 선택'),
    );
  }
}
