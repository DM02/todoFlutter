import 'package:flutter/material.dart';
import 'package:todoflutter/models/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          //input
          TextField(
            controller: controller,
            decoration:  InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Dodaj zadanie",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(text: "Zapisz", onPressed: onSave),
              const SizedBox(width: 6,),
              MyButton(text: "Anuluj", onPressed: onCancel),
            ],
          )
        ]),
      ),
    );
  }
}
