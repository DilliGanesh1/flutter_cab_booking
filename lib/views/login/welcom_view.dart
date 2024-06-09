import 'package:cab_booking/common/color_extension.dart';
import 'package:cab_booking/common_widgets/round_button.dart';
import 'package:cab_booking/views/login/change_language_view.dart';
import 'package:cab_booking/views/login/mobile_number_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class welcomeView extends StatefulWidget {
  const welcomeView({super.key});

  @override
  State<welcomeView> createState() => _welcomeViewState();
}

class _welcomeViewState extends State<welcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.bg,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/image-welcome-bg.png",
            width: context.width,
            height: context.height,
            fit: BoxFit.cover,
          ),
          Container(
            width: context.width,
            height: context.height,
            color: Colors.black.withOpacity(0.7),
          ),
          SafeArea(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/image-logo-noshad.png",
                  width: context.width * 0.60,
                ),
                const Spacer(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: RoundButton(
                    title: "SIGN UP",
                    onPressed: () {
                      context.push(const MobileNumberView());
                    },
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(
                      color: TColor.primaryTextW,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
