import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/home/widgets/divider.dart';
import 'package:flutter_train_app/pages/home/widgets/swap_icon.dart';
import 'package:flutter_train_app/pages/station/stations_list.dart';

Container innerBox(bool isDarkMode, BuildContext context, changeStation, result,
    departStation, arrivalStation, setStation) {
  return Container(
    height: 200,
    decoration: BoxDecoration(
      color: isDarkMode ? const Color.fromARGB(255, 74, 70, 70) : Colors.white,
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
  bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

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
        Text(
          (isDepart ? departStation : arrivalStation) ?? "선택",
          style: isDarkMode
              ? TextStyle(fontSize: 40, color: Colors.white)
              : TextStyle(fontSize: 40, color: Colors.black),
        )
      ],
    ),
  );
}
