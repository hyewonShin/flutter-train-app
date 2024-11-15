import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/seat_page.dart';
import 'package:flutter_train_app/pages/station/stations_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('기차 예매'),
      ),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  isDepart(context, true),
                  Container(
                    width: 1,
                    height: 50,
                    color: Colors.grey[400],
                  ),
                  isDepart(context, false),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 400,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SeatPage();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    textStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                child: Text('좌석 선택'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector isDepart(BuildContext context, startFlag) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return StationListPage();
            },
          ),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            startFlag ? "출발역" : "도착역",
            style: TextStyle(
                fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          Text(
            '선택',
            style: TextStyle(fontSize: 40),
          )
        ],
      ),
    );
  }
}
