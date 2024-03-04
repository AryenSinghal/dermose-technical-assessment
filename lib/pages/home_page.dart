import 'package:dermose_technical_challenge/widgets/list_item.dart';
import 'package:dermose_technical_challenge/widgets/week_selector.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime today = DateTime.now();
  DateTime firstDay = DateTime.now();

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      today = selectedDay;
    });
  }

  void onCalendarPressed() async {
    DateTime? newDate = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
    );
    if (newDate != null) {
      setState(() {
        today = newDate;
        firstDay = newDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(254, 254, 254, 1),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromRGBO(17, 24, 39, 1),
          foregroundColor: const Color.fromRGBO(254, 254, 254, 1),
          shape: const CircleBorder(),
          child: const Icon(Icons.add),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 24, top: 20, right: 24, bottom: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "${DateFormat.MMMM().format(today)} ${DateFormat.y().format(today)}",
                  style: GoogleFonts.lexend(
                    color: const Color.fromRGBO(17, 24, 39, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(243, 244, 246, 1),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Text(
                    "+\$200",
                    style: GoogleFonts.lexend(
                      color: const Color.fromRGBO(5, 119, 71, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      letterSpacing: 0.1,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: WeekSelector(
                      today: today,
                      firstDay: firstDay,
                      onDaySelected: onDaySelected),
                ),
                IconButton.outlined(
                  onPressed: onCalendarPressed,
                  icon: const Icon(
                    Icons.calendar_month,
                    size: 24,
                    color: Color.fromRGBO(17, 24, 39, 1),
                  ),
                  padding: const EdgeInsets.all(12),
                )
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, top: 13, right: 24),
              child: ListView(
                padding: const EdgeInsets.only(top: 24),
                children: const [
                  ListItemInProgress(
                    startTime: "9:00 AM",
                    duration: "1h 45min",
                    services: "Service(s) here ",
                    clientName: "John Doe",
                    startEnd: "9:00 AM - 10:45 AM",
                  ),
                  ListItemDefault(
                    startTime: "11:00 AM",
                    duration: "30min",
                    services: "Service(s) here ",
                    clientName: "John Doe",
                    startEnd: "11:00 AM - 11:30 AM",
                  ),
                  ListItemDefault(
                    startTime: "12:00 PM",
                    duration: "1h",
                    services: "Service(s) here ",
                    clientName: "John Doe",
                    startEnd: "12:00 PM - 1:00 PM",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
