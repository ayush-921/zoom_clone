import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

class HomeMeetBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String text;
  final Color clr;
  const HomeMeetBtn({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.text,
    required this.clr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: clr,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.black.withOpacity(0.06),
                  offset: const Offset(0, 4),
                ),
              ]),
          width: 65,
          height: 65,
          child: Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.grey),
        )
      ]),
    );
  }
}
