import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildTextField(String label, String prefix, TextEditingController textController, void Function(String) functions) {
  return TextField(
    controller: textController,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(
        color: Colors.amber,
      ),
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          width: 3,
        ),
      ),
      prefixText: prefix,
    ),
    style: const TextStyle(
        color: Colors.amber,
        fontSize: 25
    ),
    onChanged: functions,
  );
}