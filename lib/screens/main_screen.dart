import 'package:app_desconto/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List screens = const [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[800],
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 0;
              }),
              child: Column(
                children: [
                  Icon(
                    Ionicons.ticket_sharp,
                    color: currentTab == 0 ? Colors.yellow : Colors.white,
                    size: 26,
                  ),
                  Text(
                    'Descontos',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: currentTab == 0 ? Colors.yellow : Colors.white),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 1;
              }),
              child: Column(
                children: [
                  Icon(
                    Ionicons.map,
                    color: currentTab == 1
                        ? Color.fromARGB(255, 250, 205, 6)
                        : Colors.white,
                    size: 26,
                  ),
                  Text(
                    'Onde Ir',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: currentTab == 1 ? Colors.yellow : Colors.white),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 2;
              }),
              child: Column(
                children: [
                  Icon(
                    Ionicons.calendar,
                    color: currentTab == 2
                        ? Color.fromARGB(255, 250, 205, 6)
                        : Colors.white,
                    size: 26,
                  ),
                  Text(
                    'Utilizados',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: currentTab == 2 ? Colors.yellow : Colors.white),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 3;
              }),
              child: Column(
                children: [
                  Icon(
                    Ionicons.person,
                    color: currentTab == 3
                        ? Color.fromARGB(255, 250, 205, 6)
                        : Colors.white,
                    size: 26,
                  ),
                  Text(
                    'Perfil',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: currentTab == 3 ? Colors.yellow : Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: screens[currentTab],
    );
  }
}
