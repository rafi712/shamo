import 'package:flutter/material.dart';
import 'package:shamo/common/theme.dart';
import 'package:shamo/widgets/primary_button.dart';

class SignUpScreen extends StatelessWidget {
  static const route = '/sign-up';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semibold
              ),
            ),
            const SizedBox(height: 2),
            Text(
              "Register and Happy Shoping",
              style: subtitleTextStyle
            ),
          ],
        ),
      );
    }

    Widget textFieldGroup({
      required String title,
      required String type,
    }) {
      String generateIcon(String type) {
        switch (type) {
          case 'email': return 'assets/icon_email.png';
          case 'password': return 'assets/icon_password.png';
          case 'name': return 'assets/icon_name.png';
          case 'username': return 'assets/icon_username.png';
          default: return 'assets/icon_email.png';
        }
      }
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium
            )
          ),
          const SizedBox(height: 12),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: bg2Color,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    generateIcon(type),
                    width: 17
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      keyboardType: type == 'email' ? TextInputType.emailAddress : TextInputType.text,
                      obscureText:  type == 'password',
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: "Your $title",
                        hintStyle: subtitleTextStyle
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }
    
    Widget signUpButton() {
      return PrimaryButton(
        size: const Size(double.infinity, 50),
        child: Text(
          'Sign Up',
          style: primaryTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 16
          )
        ),
      );
    }
    
    Widget footer() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already have an account? ',
            style: subtitleTextStyle,
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Text(
              'Sign In',
              style: purpleTextStyle.copyWith(
                fontWeight: semibold
              )
            ),
          )
        ],
      );
    }



    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: bg1Color,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(),
                  const SizedBox(height: 50),
                  textFieldGroup(
                    title: 'Full Name',
                    type: 'name',
                  ),
                  const SizedBox(height: 20),
                  textFieldGroup(
                    title: 'Username',
                    type: 'username',
                  ),
                  const SizedBox(height: 20),
                  textFieldGroup(
                    title: 'Email Address',
                    type: 'email',
                  ),
                  const SizedBox(height: 20),
                  textFieldGroup(
                    title: 'Password',
                    type: 'password',
                  ),
                  const SizedBox(height: 30),
                  signUpButton(),
                  const SizedBox(height: 50),
                  footer(),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  
}