import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime lastDate = now.add(Duration(days: 365));
    return DatePickerDialog(
      initialDate: now,
      firstDate: now,
      lastDate: lastDate,
    );
  }
}
