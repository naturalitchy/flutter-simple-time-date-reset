
import 'package:flutter/material.dart';
import 'package:simple_board/screen/description_date.dart';
import 'package:simple_board/screen/description_time.dart';
import 'package:simple_board/screen/home_inner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  List<Widget> _pages = <Widget> [
    HomeInner(),
    DescriptionTime(),
    DescriptionDate(),
  ];

  void _bottomNavOntab(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print(_selectedIndex);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('You know Date and Time.'),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            _bottomNavOntab(0);
          },
          icon: const Icon(Icons.home),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _bottomNavOntab(1);
            },
            icon: const Icon(Icons.watch),
            highlightColor: Colors.red,
            splashColor: Colors.black,
            disabledColor: Colors.yellow,
          ),
          IconButton(
            onPressed: () {
              _bottomNavOntab(2);
            },
            icon: const Icon(Icons.date_range),
          ),
        ],
      ),

      body: _pages[_selectedIndex],
      // Container(
      //   padding: EdgeInsets.only(left: 50, right: 50),
      //   color: Colors.grey,
      //   child: Container(
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(30),
      //       color: Colors.green,
      //     ),
      //   ),
      // ),


      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: const Icon(Icons.watch),
            label: 'Description Time',
          ),
          const BottomNavigationBarItem(
            icon: const Icon(Icons.date_range),
            label: 'Description Date',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _bottomNavOntab,
      ),
    );
  }
}