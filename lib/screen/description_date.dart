
import 'package:flutter/material.dart';

class DescriptionDate extends StatefulWidget {
  const DescriptionDate({Key? key}) : super(key: key);

  @override
  State<DescriptionDate> createState() => _DescriptionDateState();
}

class _DescriptionDateState extends State<DescriptionDate> {
  DateTime currentTime = DateTime.now();

  Widget getCurrentTime() {
    setState(() {
      currentTime = DateTime.now();
    });

    return Container(
      child: Center(
        child: Text('Time => ${currentTime}'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Center(
    //     child: Text('This is Date description!!!'),
    //   ),
    // );

    return getCurrentTime();
  }
}