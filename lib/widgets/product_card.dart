import 'package:flutter/material.dart';
import 'package:shamo/common/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(right: defaultMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffECEDEF),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Image.asset(
            'assets/image_shoe.png',
            width: 215,
            height: 120,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hiking',
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                const SizedBox(height: 6),
                Text(
                  'COURT VISION 2.0',
                  overflow: TextOverflow.ellipsis,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semibold
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  '\$58,67',
                  style: priceTextStyle.copyWith(fontWeight: semibold)
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}