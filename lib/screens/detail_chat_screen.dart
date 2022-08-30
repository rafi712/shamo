import 'package:flutter/material.dart';
import 'package:shamo/common/theme.dart';
import 'package:shamo/widgets/chat_bubble.dart';

class DetailChatScreen extends StatelessWidget {
  static const route = '/detail-chat';
  const DetailChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    PreferredSizeWidget header() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10).copyWith(top: 20),
          decoration: BoxDecoration(
            color: bg1Color
          ),
          child: Row(
            children: [
              IconButton(
                splashColor: Colors.transparent,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: primaryTextColor,
                )
              ),
              const SizedBox(width: 12),
              Image.asset('assets/image_shop_logo_online.png', width: 50),
              const SizedBox(width: 12),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shoe Store',
                    style: primaryTextStyle
                  ),
                  Text(
                    'Online',
                    style: secondaryTextStyle.copyWith(fontWeight: light)
                  )
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 75,
              width: 225,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: bg5Color,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: primaryColor
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset('assets/image_shoe.png')
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'COURT VISIO...',
                          style: primaryTextStyle
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '\$57,15',
                          style: priceTextStyle
                        ),
                      ],
                    ),
                  ),
                  Image.asset('assets/button_close.png', width: 22),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12
                    ),
                    decoration: BoxDecoration(
                      color: bg4Color,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextFormField(
                      style: primaryTextStyle.copyWith(fontSize: 14),
                      decoration: InputDecoration.collapsed(
                        hintText: 'Type Message...',
                        hintStyle: subtitleTextStyle.copyWith(fontSize: 14)
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Image.asset('assets/button_send.png', width: 45),
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: const [
          ChatBubble(text: 'Hi, This item is still available?', isSender: true, hasProduct: true),
          ChatBubble(text: 'Good night, This item is only available in size 42 and 43'),
          ChatBubble(text: 'Owww, it suits me very well', isSender: true,),
        ],
      );
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: bg3Color,
        appBar: header(),
        body: content(),
        bottomNavigationBar: chatInput(),
      ),
    );
  }
}