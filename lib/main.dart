import 'package:dermose_technical_challenge/pages/clients_page.dart';
import 'package:dermose_technical_challenge/pages/home_page.dart';
import 'package:dermose_technical_challenge/pages/notifications_page.dart';
import 'package:dermose_technical_challenge/pages/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentPageIndex = 0;

  List pages = [
    const HomePage(),
    const ClientsPage(),
    const NotificationsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(254, 254, 254, 1),
        bottomNavigationBar: NavigationBar(
          backgroundColor: const Color.fromRGBO(254, 254, 254, 1),
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.book), label: "Clients"),
            NavigationDestination(
                icon: Icon(Icons.notifications), label: "Notifications"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
        body: pages[currentPageIndex],
      ),
      routes: {
        '/homepage': (context) => const HomePage(),
        '/clientspage': (context) => const ClientsPage(),
        '/notificationspage': (context) => const NotificationsPage(),
        '/profilepage': (context) => const ProfilePage(),
      },
    );
  }
}
