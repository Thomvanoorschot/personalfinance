
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({this.height = 24, this.width = 24, super.key});

  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8), // Padding inside the container
      decoration: BoxDecoration(
        color: Colors.grey[200], // Background color of the container
        borderRadius: BorderRadius.circular(12), // Rounded edges
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(2, 2), // Shadow effect
          ),
        ],
      ),
      child: SvgPicture.asset(
        'assets/housing.svg',
        height: height,
        width: width,
        colorFilter: ColorFilter.mode(
          Theme.of(context).colorScheme.secondary,
          BlendMode.dst,
        ),
      ),
    );
  }
}
