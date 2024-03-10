import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gdsc_solution_challenge_2024/utils/constants/colors.dart';
import 'package:table_calendar/table_calendar.dart';

class StreakCalendar extends StatefulWidget {
  const StreakCalendar({super.key});

  @override
  StreakCalendarState createState() => StreakCalendarState();
}

class StreakCalendarState extends State<StreakCalendar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TableCalendar(
          firstDay: DateTime.utc(2010, 10, 20),
          lastDay: DateTime.utc(2040, 10, 20),
          focusedDay: DateTime.now(),
          calendarStyle: const CalendarStyle(
            todayDecoration: BoxDecoration(
              color: AppColors.ACCENT_COLOR,
              shape: BoxShape.circle,
            ),
            selectedDecoration: BoxDecoration(
              color: AppColors.ACCENT_COLOR,
              shape: BoxShape.circle,
            ),
            todayTextStyle: TextStyle(
              color: Colors.white,
            ),
            selectedTextStyle: TextStyle(
              color: Colors.white,
            ),
            holidayTextStyle: TextStyle(
              color: Colors.white,
            ),
            weekendTextStyle: TextStyle(
              color: Colors.black54,
            ),
            outsideTextStyle: TextStyle(
              color: Colors.black26,
            ),
          ),
        ),
        // Add your streak tracking UI here
      ],
    );
  }
}
