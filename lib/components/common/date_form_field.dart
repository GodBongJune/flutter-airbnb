import 'package:air_bnb/size.dart';
import 'package:air_bnb/styles.dart';
import 'package:flutter/material.dart';

class DateFormField extends StatelessWidget {
  final prefixText;
  final hintText;
  const DateFormField({super.key, this.hintText, this.prefixText});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(gap_xs),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: hintText),
          ),
        ),
        Positioned(
          top: 8,
          left: 20,
          child: Text(
            prefixText,
            style: overLine(),
          ),
        )
      ],
    );
  }
}
