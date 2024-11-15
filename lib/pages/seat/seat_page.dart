import 'package:flutter/material.dart';

class SeatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('좌석 선택'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '수서',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 89, 76, 92)),
                ),
                Icon(
                  Icons.arrow_circle_right_outlined,
                  size: 30,
                ),
                Text(
                  '부산',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text('선택됨'),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.grey[300]!,
                            borderRadius: BorderRadius.circular(8))),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text('선택안됨'),
                ],
              ),
            ),
            SizedBox(
              height: 600,
              child: ListView(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColumnSeat(),
                    SizedBox(
                      width: 4,
                    ),
                    ColumnSeat(),
                    SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('1'),
                          Text('2'),
                          Text('3'),
                        ],
                      ),
                    ),
                    ColumnSeat(),
                    SizedBox(
                      width: 4,
                    ),
                    ColumnSeat(),
                  ],
                ),
              ]),
            ),
            SizedBox(
              width: 380,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {},
                child: Text(
                  '예매 하기',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ));
  }
}

class ColumnSeat extends StatelessWidget {
  const ColumnSeat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: Text(
            'A',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
        seat(),
        seat(),
        seat(),
        seat(),
        seat(),
        seat(),
        seat(),
        seat(),
        seat(),
        seat(),
        seat(),
        seat(),
        seat(),
        seat(),
        seat(),
        seat(),
        seat(),
        seat(),
        seat(),
        seat(),
      ],
    );
  }
}

class seat extends StatelessWidget {
  const seat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.grey[300]!,
                borderRadius: BorderRadius.circular(8)),
          ),
        ),
        SizedBox(
          height: 4,
        ),
      ],
    );
  }
}
