import 'package:flutter/material.dart';

import 'package:flutter101/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 183, 152, 236),
          Color.fromARGB(255, 37, 11, 83)
        ]),
      ),
    ),
  );
}
