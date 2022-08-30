import 'package:flutter/material.dart';
import 'package:shamo/common/theme.dart';
import 'package:shamo/widgets/chat_tile.dart';
import 'package:shamo/widgets/primary_button.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header() {
      return AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: bg1Color,
        title: Text(
          'Message Support',
          style: primaryTextStyle.copyWith(
            fontWeight: semibold,
            fontSize: 18
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: bg3Color,
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: const [
              SizedBox(height: 33),
              ChatTile(),
            ],
          ),
        )
      );
    }

    // ignore: unused_element
    Widget emptyChat() {
      return Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: bg3Color,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image_no_message.png',
                width: 80,
              ),
              const SizedBox(height: 20),
              Text(
                'Opss no message yet?',
                style: primaryTextStyle.copyWith(fontSize: 16)
              ),
              const SizedBox(height: 12),
              Text(
                'You have never done a transaction',
                style: secondaryTextStyle
              ),
              const SizedBox(height: 20),
              PrimaryButton(
                size: const Size(152, 44),
                child: Text(
                  'Explore Store',
                  style: primaryTextStyle
                ),
              ),
            ],
          ),
        ),
      );
    }


    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        header(),
        content()
      ],
    );
  }
}