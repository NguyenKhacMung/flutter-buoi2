import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final String textBtn;
  const button({Key? key, required this.textBtn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 354,
      height: 55,
      decoration: BoxDecoration(
        color: Color(0xffF2A213),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextButton(
        onPressed: () {
          const snackBar = SnackBar(content: Text('Tap'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text(
          textBtn,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
