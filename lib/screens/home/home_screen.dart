import 'package:flutter/material.dart';
import 'package:shamo/common/theme.dart';
import 'package:shamo/widgets/product_card.dart';
import 'package:shamo/widgets/product_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, Alex',
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semibold
                    ),
                  ),
                  Text(
                    '@alexkeinn',
                    style: subtitleTextStyle.copyWith(fontSize: 16)
                  )
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_profile.png')
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget categories() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: defaultMargin),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Text(
                'All Shoes',
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 13
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: transparentColor,
                border: Border.all(color: subtitleTextColor),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Text(
                'Running',
                style: subtitleTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 13
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: transparentColor,
                border: Border.all(color: subtitleTextColor),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Text(
                'Training',
                style: subtitleTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 13
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: transparentColor,
                border: Border.all(color: subtitleTextColor),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Text(
                'Basket Ball',
                style: subtitleTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 13
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: transparentColor,
                border: Border.all(color: subtitleTextColor),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Text(
                'Hiking',
                style: subtitleTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 13
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget title(String title) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Text(
          title,
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semibold
          )
        ),
      );
    }

    Widget popularProducts() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: defaultMargin),
            const ProductCard(),
            const ProductCard(),
            const ProductCard(),
          ],
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: const EdgeInsets.only(top: 14),
        child: Column(
          children: const [
            ProductTile(),
            ProductTile(),
            ProductTile(),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          SizedBox(height: defaultMargin),
          categories(),
          SizedBox(height: defaultMargin),
          title('Popular Products'),
          const SizedBox(height: 14),
          popularProducts(),
          SizedBox(height: defaultMargin),
          title('New Arrivals'),
          newArrivals(),
        ],
      ),
    );
  }
}