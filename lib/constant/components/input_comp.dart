import 'package:flutter/material.dart';
import 'package:halolfarm/sizeconfige/sizeconfig.dart';

class InputComp {
  static inputDecComp(String text) {
    return InputDecoration(
      hintText: text,
      hintStyle: TextStyle(
        fontSize: he(16),
        color: const Color(0xFF565A57),
      ),
    );
  }
}
