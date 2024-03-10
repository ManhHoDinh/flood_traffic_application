import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData? icon;
  final String label;
  final VoidCallback onPressed;
  final double top;
  final Color backgroundColor; 
  final Color foregroundColor;

  const CustomIconButton({
    required key,
    this.icon,
    required this.label,
    required this.onPressed,
    required this.top,
    required this.backgroundColor,
    required this.foregroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center (
      child: Padding (
        padding: EdgeInsets.only(top: top),
        child: SizedBox (
        width: 280,
        height: 80,
        child: ElevatedButton.icon(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 26.0,
            color: foregroundColor,
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            foregroundColor: MaterialStateProperty.all(foregroundColor),
            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,)), 
            padding: MaterialStateProperty.all(EdgeInsets.only(left: 26)), 
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
            alignment: Alignment.centerLeft,
          ),
          label: Text(label),
        ),
      )),
    );
  }
}