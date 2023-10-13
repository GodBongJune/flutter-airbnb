import 'package:air_bnb/size.dart';
import 'package:air_bnb/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CountFormField extends StatefulWidget {
  final prefixText;
  const CountFormField({super.key, this.prefixText});

  @override
  State<CountFormField> createState() => _CountFormFieldState();
}

class _CountFormFieldState extends State<CountFormField> {
  late TextEditingController textEditingController;

  int currentCount = 0;

  @override
  void initState() {
    super.initState();
    textEditingController =
        TextEditingController(text: currentCount.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(gap_xs),
          child: TextFormField(
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            controller: textEditingController,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
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
          top: 25,
          right: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(CupertinoIcons.add_circled),
                iconSize: 20,
                constraints: BoxConstraints(),
                padding: EdgeInsets.only(right: 2),
                onPressed: () {
                  setState(() {
                    currentCount = currentCount + 1;
                    textEditingController.text = currentCount.toString();
                  });
                },
              ),
              IconButton(
                icon: Icon(CupertinoIcons.minus_circle),
                iconSize: 20,
                constraints: BoxConstraints(),
                padding: EdgeInsets.only(left: 2),
                onPressed: () {
                  if (currentCount > 0) {
                    currentCount = currentCount - 1;
                    textEditingController.text = currentCount.toString();
                  }
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
