
import 'package:flutter/material.dart';

class HomeInner extends StatelessWidget {
  const HomeInner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(100),
      color: Colors.black,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Colors.blue,
        ),
        child: const Center(
          child: const Padding(
            padding: const EdgeInsets.all(50),
            child: const Text(
              'Welcome to Home Inner screen.',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}