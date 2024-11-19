import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/seat_page.dart';
import 'package:flutter_train_app/pages/station/stations_list.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? departStation;
  String? arrivalStation;
  List? result;

  void stationChanged(result) {
    setState(() {
      result[0] ? departStation = result[1] : arrivalStation = result[1];
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text('기차 예매'),
      ),
      backgroundColor: isDarkMode ? Colors.black87 : Colors.grey[200],
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
                  StationBox(context, true),
                  Container(
                    width: 1,
                    height: 50,
                    color: Colors.grey[400],
                  ),
                  StationBox(context, false),
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

  GestureDetector StationBox(BuildContext context, isDepart) {
    return GestureDetector(
      onTap: () async {
        result = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return StationListPage(
                isDepart: isDepart,
                departStation: departStation,
                arrivalStation: arrivalStation,
              );
            },
          ),
        );
        stationChanged(result);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isDepart ? "출발역" : "도착역",
            style: TextStyle(
                fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          Text(
            (isDepart ? departStation : arrivalStation) ?? "선택",
            style: TextStyle(fontSize: 40),
          )
        ],
      ),
    );
  }
}
