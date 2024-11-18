import 'package:flutter/material.dart';

// command + shift + A : 다크모드

class StationListPage extends StatelessWidget {
  final bool isDepart;
  final void Function(String newValue) onChanged;

  StationListPage({
    super.key,
    required this.isDepart,
    required this.onChanged,
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
    return ListView.builder(
        itemCount: stationList.length,
        itemBuilder: (ctx, idx) {
          return GestureDetector(
            onTap: () {
              onChanged(stationList[idx]);
              Navigator.pop(context);
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[300]!))),
              child: ListTile(
                  title: Text(
                stationList[idx],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
