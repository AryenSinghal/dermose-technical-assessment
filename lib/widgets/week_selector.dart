import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class WeekSelector extends StatelessWidget {
  final DateTime today;
  final DateTime firstDay;
  final void Function(DateTime, DateTime)? onDaySelected;

  const WeekSelector({
    super.key,
    required this.today,
    required this.firstDay,
    this.onDaySelected,
  });

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: firstDay,
      lastDay: firstDay.add(const Duration(days: 6)),
      selectedDayPredicate: (day) => isSameDay(day, today),
      focusedDay: today,
      headerVisible: false,
      calendarFormat: CalendarFormat.week,
      startingDayOfWeek: StartingDayOfWeek.values[(firstDay.weekday + 6) % 7],
      calendarStyle: CalendarStyle(
        todayTextStyle: GoogleFonts.roboto(
          color: const Color.fromRGBO(17, 24, 39, 1),
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        defaultTextStyle: GoogleFonts.roboto(
          color: const Color.fromRGBO(17, 24, 39, 1),
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        weekendTextStyle: GoogleFonts.roboto(
          color: const Color.fromRGBO(17, 24, 39, 1),
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        selectedTextStyle: GoogleFonts.roboto(
          color: const Color.fromRGBO(254, 254, 254, 1),
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        todayDecoration: const ShapeDecoration(
          shape: CircleBorder(),
        ),
        selectedDecoration: const ShapeDecoration(
          shape: CircleBorder(),
          color: Color.fromRGBO(17, 24, 39, 1),
        ),
      ),
      daysOfWeekHeight: 16,
      daysOfWeekStyle: DaysOfWeekStyle(
        dowTextFormatter: (date, locale) {
          return DateFormat.E(locale).format(date)[0][0];
        },
        weekdayStyle: GoogleFonts.lexend(
          color: const Color.fromRGBO(31, 41, 55, 1),
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
        weekendStyle: GoogleFonts.lexend(
          color: const Color.fromRGBO(31, 41, 55, 1),
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
      ),
      onDaySelected: onDaySelected,
    );
  }
}
