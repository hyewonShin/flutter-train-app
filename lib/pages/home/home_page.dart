import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/home/widgets/inner_box.dart';
import 'package:flutter_train_app/pages/home/widgets/seat_selection_btn.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? departStation;
  String? arrivalStation;
  List? result;

  void setStation(result) {
    setState(() {
      result[0] ? departStation = result[1] : arrivalStation = result[1];
    });
  }

  void changeStation() {
    setState(() {
      String? temp = departStation;
      departStation = arrivalStation;
      arrivalStation = temp;
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
            innerBox(isDarkMode, context, changeStation, result, departStation,
                arrivalStation, setStation),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 400,
              height: 60,
              child: SeatSelectionBtn(
                  departStation: departStation, arrivalStation: arrivalStation),
            ),
          ],
        ),
      ),
    );
  }
}
