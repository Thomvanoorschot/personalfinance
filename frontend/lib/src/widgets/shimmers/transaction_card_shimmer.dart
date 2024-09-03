import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TransactionCardShimmer extends StatelessWidget {
  const TransactionCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black26,
      highlightColor: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Container(
          width: double.infinity,
          height: 20.0,
          color: Colors.black,
          margin: const EdgeInsets.only(bottom: 8.0),
        ),
      ),
    );
  }
}