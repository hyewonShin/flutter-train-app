import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/home/widgets/divider_line.dart';
import 'package:flutter_train_app/pages/home/widgets/swap_icon.dart';
import 'package:flutter_train_app/pages/station/stations_list.dart';

Container innerBox(
    context, changeStation, result, departStation, arrivalStation, setStation) {
  return Container(
    height: 200,
    decoration: BoxDecoration(
      color: Theme.of(context).cardColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        stationBox(
            context, true, result, departStation, arrivalStation, setStation),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            swapIcon(changeStation),
            DividerLine(),
          ],
        ),
        stationBox(
            context, false, result, departStation, arrivalStation, setStation),
      ],
    ),
  );
}

GestureDetector stationBox(BuildContext context, isDepart, result,
    departStation, arrivalStation, setStation) {
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
      setStation(result);
    },
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          isDepart ? "출발역" : "도착역",
          style: TextStyle(
              fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        Text((isDepart ? departStation : arrivalStation) ?? "선택",
            style: Theme.of(context).textTheme.displaySmall)
      ],
    ),
  );
}
