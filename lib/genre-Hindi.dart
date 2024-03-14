import 'package:flutter/material.dart';

class HindiGenre extends StatelessWidget {
  const HindiGenre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF00050D),
      body: Center(
        child: Text(
          'Hindi Genre',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
