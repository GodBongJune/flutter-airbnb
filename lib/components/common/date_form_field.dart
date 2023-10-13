import 'package:air_bnb/components/common/calendar.dart';
import 'package:air_bnb/size.dart';
import 'package:air_bnb/styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormField extends StatefulWidget {
  final prefixText;
  final hintText;
  const DateFormField({super.key, this.hintText, this.prefixText});

  @override
  State<DateFormField> createState() => _DateFormFieldState();
}

class _DateFormFieldState extends State<DateFormField> {
  late TextEditingController textEditingController;
  DateTime selectedDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController(
        text: DateFormat("yyyy-MM-dd").format(DateTime.now()));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(gap_xs),
          child: TextFormField(
            controller: textEditingController,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: widget.hintText),
          ),
        ),
        Positioned(
          top: 8,
          left: 20,
          child: Text(
            widget.prefixText,
            style: overLine(),
          ),
        ),
        Positioned(
          top: 20,
          right: 10,
          child: IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    actions: [
                      Calendar(),
                    ],
                  );
                },
              );
            },
            icon: Icon(Icons.calendar_month),
          ),
        )
      ],
    );
  }
}
