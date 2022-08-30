import 'package:flutter/material.dart';
import 'package:shamo/common/theme.dart';
import 'package:shamo/screens/detail_chat_screen.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, DetailChatScreen.route),
          child: Row(
            children: [
              Image.asset(
                'assets/image_shop_logo.png',
                width: 54,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shoe Store',
                      style: primaryTextStyle.copyWith(fontSize: 15),
                    ),
                    Text(
                      'Good night, This item is on...',
                      overflow: TextOverflow.ellipsis,
                      style: secondaryTextStyle.copyWith(fontWeight: light)
                    ),
                  ],
                ),
              ),
              Text(
                'Now',
                style: secondaryTextStyle.copyWith(fontSize: 10)
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Divider(
          thickness: 1,
          color: bg2Color,
        ),
      ],
    );
  }
}