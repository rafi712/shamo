import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shamo/common/theme.dart';
import 'package:shamo/widgets/primary_button.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;
  final bool hasProduct;

  const ChatBubble({
    Key? key,
    required this.text,
    this.isSender = false,
    this.hasProduct = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget productWidget() {
      return Container(
        width: 240,
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: bg5Color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(isSender ? 12 : 0),
            topRight: Radius.circular(isSender ? 0 : 12),
            bottomLeft: const Radius.circular(12),
            bottomRight: const Radius.circular(12)
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset('assets/image_shoe.png', width: 70),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'COURT VISION 2.0 SHOES',
                        style: primaryTextStyle
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '\$57,15',
                        style: priceTextStyle
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                OutlinedButton(
                  onPressed: (){},
                  style: OutlinedButton.styleFrom(
                    splashFactory: NoSplash.splashFactory,
                    side: BorderSide(
                      color: primaryColor
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                  child: Text(
                    'Add to Cart',
                    style: purpleTextStyle
                  ),
                ),
                const SizedBox(width: 8),
                PrimaryButton(
                  borderRadius: BorderRadius.circular(8),
                  child: Text(
                    'Buy Now',
                    style: GoogleFonts.poppins(
                      color: bg5Color
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: isSender 
        ? CrossAxisAlignment.end
        : CrossAxisAlignment.start,
        children: [
          hasProduct ? productWidget() : const SizedBox(),
          Row(
            mainAxisAlignment: isSender 
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
            children: [
              Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.7
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12
                ),
                decoration: BoxDecoration(
                  color: isSender ? bg5Color : bg4Color,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(isSender ? 12 : 0),
                    topRight: Radius.circular(isSender ? 0 : 12),
                    bottomLeft: const Radius.circular(12),
                    bottomRight: const Radius.circular(12)
                  )
                ),
                child: Text(
                  text,
                  style: primaryTextStyle
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}