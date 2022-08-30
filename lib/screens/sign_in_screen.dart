import 'package:flutter/material.dart';
import 'package:shamo/common/theme.dart';
import 'package:shamo/screens/home/main_screen.dart';
import 'package:shamo/screens/sign_up_screen.dart';
import 'package:shamo/widgets/primary_button.dart';

class SignInScreen extends StatelessWidget {
  static const route = '/sign-in';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semibold
              ),
            ),
            const SizedBox(height: 2),
            Text(
              "Sign In to Continue",
              style: subtitleTextStyle
            ),
          ],
        ),
      );
    }

    Widget textFieldGroup({
      required String title,
      required String type,
      required String hintText
    }) {
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
                    type == 'email' ? 'assets/icon_email.png' : 'assets/icon_password.png',
                    width: 17
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      keyboardType: type == 'email' ? TextInputType.emailAddress : TextInputType.text,
                      obscureText:  type == 'password',
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: hintText,
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
    
    Widget signInButton() {
      return PrimaryButton(
        size: const Size(double.infinity, 50),
        child: Text(
          'Sign In',
          style: primaryTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 16
          ),
        ),
        onPressed: (){
          Navigator.pushNamed(context, MainScreen.route);
        }
      );
    }
    
    Widget footer() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don\'t have an account? ',
            style: subtitleTextStyle,
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, SignUpScreen.route),
            child: Text(
              'Sign Up',
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
        resizeToAvoidBottomInset: false,
        backgroundColor: bg1Color,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                const SizedBox(height: 70),
                textFieldGroup(
                  title: 'Email Address',
                  type: 'email',
                  hintText:'Your Email Address'
                ),
                const SizedBox(height: 20),
                textFieldGroup(
                  title: 'Password',
                  type: 'password',
                  hintText:'Your Password'
                ),
                const SizedBox(height: 30),
                signInButton(),
                const Spacer(),
                footer(),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  
}