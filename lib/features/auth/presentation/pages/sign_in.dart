import 'package:flutter/material.dart';
import 'package:meetdy_chat/core/utils/frame_original_size.dart';
import 'package:meetdy_chat/features/auth/presentation/widget/login_form_component.dart';

class SignIn_Screen extends StatefulWidget {
  const SignIn_Screen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignIn_Screen> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    double bottomInserts = MediaQuery.of(context).viewInsets.bottom;

    final Size size = get_original_size(context);
    double sizeLogo = bottomInserts == 0 ? size.width * 0.5 : size.width * 0.15;

    if (bottomInserts > 0) {
      scrollController.jumpTo(
          scrollController.position.maxScrollExtent + bottomInserts / 2);
    }

    Widget helpInfoContainer = const SizedBox(
      child: Center(
        child: InkWell(
          child: Text(
            'Having trouble logging in?',
            style: TextStyle(fontSize: 14, color: Color(0xFF929BAB)),
          ),
          // onTap: getLoginHelp,
        ),
      ),
      width: double.infinity,
      height: 36,
    );

    Widget signUpContainer = const SizedBox(
      child: Center(
        child: InkWell(
          child: Text(
            'Sign up',
            style: TextStyle(fontSize: 14, color: Color(0xFF929BAB)),
          ),
          // onTap: goToSignUpScreen,
        ),
      ),
      width: double.infinity,
      height: 36,
    );
    List<Widget> loginScreenContents = <Widget>[
      _spacing(64),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Image.asset(
          'assets/imgs/meetdy_logo.png',
          height: sizeLogo,
          width: sizeLogo,
        ),
      ),
      _spacing(64),
      const LoginFormComponent(),
      _spacing(30),
      helpInfoContainer,
      _spacing(10),
      signUpContainer,
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: loginScreenContents,
          ),
          padding: const EdgeInsets.all(45),
        ),
      ),
    );
  }

  // void getLoginHelp() {
  //   Navigator.push(
  //       context,
  //       SlideRightRoute(
  //           page: HadWinMarkdownViewer(
  //               screenName: 'Login Help',
  //               urlRequested:
  //                   'https://raw.githubusercontent.com/brownboycodes/HADWIN/master/docs/HADWIN_WIKI.md')));
  // }

  // void goToSignUpScreen() {
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => SignUpScreen()));
  // }

  SizedBox _spacing(double height) => SizedBox(
        height: height,
      );
}
