import 'package:flutter/material.dart';

class SocalIcon extends StatelessWidget {
  // final String iconSrc;
  final Function() press;
  const SocalIcon({
    Key? key,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Color.fromRGBO(106, 50, 159, 1),
          ),
          shape: BoxShape.circle,
        ),
        // child: SvgPicture.asset(
        //   iconSrc,
        //   height: 20,
        //   width: 20,
        // ),
      ),
    );
  }
}