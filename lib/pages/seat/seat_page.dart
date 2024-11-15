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
            PickedStation(),
            IsPickExample(),
            RowTitle(),
            Flexible(
              child: ListView(
                children: List.generate(
                  20,
                  (index) => RowSeat(),
                ),
              ),
            ),
            ReservationBtn()
          ],
        ));
  }
}

class PickedStation extends StatelessWidget {
  const PickedStation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          '수서',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple),
        ),
        Icon(
          Icons.arrow_circle_right_outlined,
          size: 30,
        ),
        Text(
          '부산',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple),
        ),
      ],
    );
  }
}

class ReservationBtn extends StatelessWidget {
  const ReservationBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: SizedBox(
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
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class IsPickExample extends StatelessWidget {
  const IsPickExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: Colors.purple, borderRadius: BorderRadius.circular(8)),
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
    );
  }
}

class RowTitle extends StatelessWidget {
  const RowTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
        SizedBox(
          width: 50,
          height: 50,
          child: Text(
            'B',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Text(
            'C',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Text(
            'D',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}

class RowSeat extends StatelessWidget {
  const RowSeat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        seat(),
        SizedBox(
          width: 4,
        ),
        seat(),
        SizedBox(
          width: 50,
          height: 50,
          child: Center(
            child: Text(
              '1',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        seat(),
        SizedBox(
          width: 4,
        ),
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
    return Row(
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
      ],
    );
  }
}
