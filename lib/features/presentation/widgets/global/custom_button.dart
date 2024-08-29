import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  final Widget page;
  final String text;
  const CustomeButton({super.key, required this.text, required this.page});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:Theme.of(context).colorScheme.inversePrimary),
        height: 60,
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color:Theme.of(context).colorScheme.secondary,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
