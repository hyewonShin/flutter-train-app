import 'package:flutter/material.dart';

// command + shift + A : 다크모드

class StationListPage extends StatelessWidget {
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

  Widget stationListView() {
    return ListView.builder(
        itemCount: stationList.length,
        itemBuilder: (ctx, idx) {
          return ListTile(title: Text(stationList[idx]));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('출발역'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
        ),
        body: Expanded(
          child: stationListView(),
        ));
  }
}
