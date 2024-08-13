import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meetdy_chat/core/components/EnterExitRoute.dart';
import 'package:meetdy_chat/core/utils/auth_utils.dart';
import 'package:meetdy_chat/core/utils/frame_original_size.dart';
import 'package:meetdy_chat/features/auth/presentation/pages/sign_in.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initialized();
  }

  void initialized() async {
    await Future.delayed(const Duration(seconds: 3))
        .then((value) => {directScreen()});
  }

  void directScreen() async {
    // var value = await getTokens();
    // if (value.token!.isNotEmpty) {
    //   print(
    //       "🚀 ~ _SplashScreenState ~ awaitgetTokens ~ value.token: ${value.token}");
    //   // Add navigation to the next screen if needed
    // } else {
    print("Go to login");
    Navigator.push(
      context,
      CupertinoPageRoute(builder: (context) => const SignIn_Screen()),
    );
    // }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = get_original_size(context);

    return Container(
      height: size.height,
      width: size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
              image: const AssetImage('assets/imgs/meetdy_logo.png'),
              height: size.height * 0.6,
              width: size.width * 0.6),
          CircularProgressIndicator(
            color: Colors.blue[800],
          ),
        ],
      ),
    );
  }
}
