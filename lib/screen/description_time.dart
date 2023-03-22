
import 'package:flutter/material.dart';

class DescriptionTime extends StatefulWidget {

  const DescriptionTime({Key? key}) : super(key: key);

  @override
  State<DescriptionTime> createState() => _DescriptionTimeState();
}



class _DescriptionTimeState extends State<DescriptionTime> {
  DateTime currentTime = DateTime.now();

  void _resetTime() {
    setState(() {
      currentTime = DateTime.now();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.yellow,
              alignment: Alignment.center,
              child: Text('Date Time => ${currentTime}'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 50.0),
              child: OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                ),
                onPressed: () {
                  _resetTime();
                },
                child: Text(
                  'Reset !!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ),


          // Expanded(
          //     child: Container(
          //       color: Colors.yellow,
          //     ),
          // ),
          // Expanded(
          //     child: Container(
          //       color: Colors.red,
          //     ),
          // ),
        ],
      ),
      // child: Center(
      //   child: Text('Date -> ${currentTime}'),
      // ),

    );
  }
}