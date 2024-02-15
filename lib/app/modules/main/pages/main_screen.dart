import 'package:flutter/material.dart';
import 'package:flutter_clone_zara_app/app/modules/menu/pages/menu_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: currentIndex,
        children: const [
          Center(child: Text("1")),
          Center(child: Text("2")),
          MenuScreen(),
          Center(child: Text("4")),
          Center(child: Text("5")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black45,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            const BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.home_outlined,
                  size: 24,
                )),
            const BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.search,
                  size: 24,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Text(
                  "MENU",
                  style: TextStyle(
                    fontSize: 16,
                    color: currentIndex == 2 ? Colors.black : Colors.black45,
                  ),
                )),
            const BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.person_2_outlined,
                  size: 24,
                )),
            const BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  size: 24,
                )),
          ]),
    );
  }
}
