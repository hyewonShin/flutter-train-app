import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget {
  final bool isDepart;
  final String? departStation;
  final String? arrivalStation;

  StationListPage({
    super.key,
    required this.isDepart,
    required this.departStation,
    required this.arrivalStation,
  });

  List<String> stationList = [
    "수서",
    "동탄",
    "평택지제",
    "천안아산",
    "오송",
    "대전",
    "김천구미",
    "동대구",
    "경주",
    "울산",
    "부산",
  ];

  Widget stationListView(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    List<String> departList =
        stationList.where((value) => value != arrivalStation).toList();

    List<String> arrivalList =
        stationList.where((value) => value != departStation).toList();

    return ListView.builder(
        itemCount: isDepart ? departList.length : arrivalList.length,
        itemBuilder: (ctx, idx) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(
                  context,
                  isDepart
                      ? [true, departList[idx]]
                      : [false, arrivalList[idx]]);
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[300]!))),
              child: ListTile(
                  title: Text(
                isDepart ? departList[idx] : arrivalList[idx],
                style: isDarkMode
                    ? Theme.of(context).textTheme.bodyLarge
                    : TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text((isDepart ? '출발역' : '도착역')),
        ),
        body: stationListView(context));
  }
}
