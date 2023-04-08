import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.icon,
      required this.label,
      required this.onPressed,
      this.color = Colors.blue,
      this.borderRadius})
      : super(key: key);

  final IconData icon;
  final Color color;
  final String label;
  final Function() onPressed;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final _borderRadius = borderRadius ?? BorderRadius.circular(10);
    return Column(
      children: [
        InkWell(
          onTap: onPressed,
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: _borderRadius, color: color.withOpacity(0.25)),
            padding: const EdgeInsets.all(15),
            child: Icon(icon, color: color, size: 30),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: 70,
          child: Text(
            label.capitalizeFirst!,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
