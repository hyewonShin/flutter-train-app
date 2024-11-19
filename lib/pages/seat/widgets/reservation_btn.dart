import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/home/home_page.dart';

class ReservationBtn extends StatelessWidget {
  final String? rowAlpha;
  final int? colNum;
  final String? selectedRow;
  final int? selectedCol;

  const ReservationBtn({
    super.key,
    required this.rowAlpha,
    required this.colNum,
    required this.selectedRow,
    required this.selectedCol,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: SizedBox(
        width: 380,
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: () {
            if (selectedRow != null && selectedCol != null) {
              showCupertinoDialog(
                context: context,
                builder: (context) {
                  return CupertinoAlertDialog(
                    title: Text('예매 하시겠습니까?'),
                    content: Text('좌석 : $selectedRow-$selectedCol'),
                    actions: [
                      CupertinoDialogAction(
                          isDestructiveAction: true,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('취소')),
                      CupertinoDialogAction(
                          isDefaultAction: true,
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
                          },
                          child: Text('확인'))
                    ],
                  );
                },
              );
            } else {
              print('선택된 자석이 없습니다');
            }
          },
          child: Text(
            '예매 하기',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
