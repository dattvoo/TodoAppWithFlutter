import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List _pages = [];

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pages = [
      Container(color: Colors.red),
      Container(color: Colors.black),
      Container(color: Colors.blue),
      Container(color: Colors.yellow),
      Container(color: Colors.purple),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: _pages.elementAt(_currentPage),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFF363636),
          selectedItemColor: const Color(0xFF8687E7),
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentPage,
          onTap: (index) {
            if (index == 2) {
              return;
            }
            setState(
              () {
                _currentPage = index;
              },
            );
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Image.asset(
                  "assets/images/home.png",
                  width: 24,
                  height: 24,
                  fit: BoxFit.fill,
                ),
                activeIcon: Image.asset(
                  "assets/images/home.png",
                  width: 24,
                  height: 24,
                  fit: BoxFit.fill,
                  color: const Color(0xFF8687E7),
                ),
                label: "Index"),
            BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Image.asset(
                  "assets/images/calendar.png",
                  width: 24,
                  height: 24,
                  fit: BoxFit.fill,
                ),
                activeIcon: Image.asset(
                  "assets/images/calendar.png",
                  width: 24,
                  height: 24,
                  fit: BoxFit.fill,
                  color: const Color(0xFF8687E7),
                ),
                label: 'Calendar'),
            BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Container(),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Image.asset(
                  "assets/images/clock.png",
                  width: 24,
                  height: 24,
                  fit: BoxFit.fill,
                ),
                activeIcon: Image.asset(
                  "assets/images/clock.png",
                  width: 24,
                  height: 24,
                  fit: BoxFit.fill,
                ),
                label: 'Clock'),
            BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Image.asset(
                  "assets/images/user.png",
                  width: 24,
                  height: 24,
                  fit: BoxFit.fill,
                ),
                label: 'Profiler'),
          ]),
      floatingActionButton: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32), color: Colors.purple),
        child: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () => {},
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
