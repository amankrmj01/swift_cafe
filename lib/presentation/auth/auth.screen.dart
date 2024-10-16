import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:swift_cafe/consts/app_detials.dart';
import 'package:swift_cafe/consts/images.dart';
import 'package:swift_cafe/infrastructure/navigation/routes.dart';
import 'package:swift_cafe/presentation/widgets/auth_text_field.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../consts/icons.dart';
import 'controllers/auth.controller.dart';

class AuthScreen extends GetView<AuthController> {
  const AuthScreen({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.center,
        children: [
          AuthBackground(),
          AuthLayer01(),
          AuthLayer02(),
          // AuthLayer03(),
          TopLayer(controller: controller),
        ],
      ),
    );
  }
}

class TopLayer extends StatelessWidget {
  const TopLayer({
    super.key,
    required this.controller,
  });

  final AuthController controller;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        alignment: Alignment.center,
        height: 750,
        width: 366,
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AuthLogo(),
                AuthScreenAppName(),
                10.heightBox,
                AuthDisplayText(),
                20.heightBox,
                AuthTextField(
                  text: 'User Name',
                  obscureText: false,
                  controller: controller.userNameController,
                ),
                AuthTextField(
                  text: 'Password',
                  obscureText: false,
                  controller: controller.passwordController,
                ),
                40.heightBox,
                AuthLoginButton(),
                34.heightBox,
                AuthSignUpButton(),
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: MediaQuery.of(context).viewInsets.bottom == 0
                      ? 10
                      : MediaQuery.of(context).viewInsets.bottom + 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AuthDisplayText extends StatelessWidget {
  const AuthDisplayText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16,
      width: 164,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Text(
        'Latte but never Late',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
          height: 0,
          shadows: [
            Shadow(
              blurRadius: 10.0,
              color: Colors.white,
              offset: Offset(0, 0),
            ),
          ],
        ),
      ),
    );
  }
}

class AuthLogo extends StatelessWidget {
  const AuthLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: SimpleShadow(
        color: Colors.black.withOpacity(0.5),
        offset: Offset(4, 6),
        child: Image(
          image: AssetImage(AppIcons.iconAuth01Coffee),
        ),
      ),
    );
  }
}

class AuthLayer01 extends StatelessWidget {
  const AuthLayer01({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.50,
      child: Container(
        width: 431,
        height: 932,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0x004F71EA), Color(0x82CF7A4B)],
          ),
        ),
      ),
    );
  }
}

class AuthLayer03 extends StatelessWidget {
  const AuthLayer03({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.10,
      child: Container(
        margin: EdgeInsets.all(24),
        width: 366,
        height: 750,
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: Image.asset(AppImages.backgroundAuth02).image,
            fit: BoxFit.none,
          ),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1),
            borderRadius: BorderRadius.circular(17),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
      ),
    );
  }
}

class AuthLayer02 extends StatelessWidget {
  const AuthLayer02({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(17),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
        child: Container(
          height: 750,
          width: 366,
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          // margin: EdgeInsets.all(24),
          color: Colors.white.withOpacity(0.2),
          child: Image.asset(
            AppImages.backgroundAuth02,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}

class AuthBackground extends StatelessWidget {
  const AuthBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.backgroundAuth01),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class AuthSignUpButton extends StatelessWidget {
  const AuthSignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 245,
      height: 49,
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFF8F8F8)),
          borderRadius: BorderRadius.circular(33),
        ),
        shadows: [
          BoxShadow(
            color: Color(0xA5000000),
            blurRadius: 15,
            offset: Offset(2, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: TextButton(
        onPressed: () {
          Get.offNamed(Routes.MAIN);
        },
        child: Text(
          'Sign Up',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
      ),
    );
  }
}

class AuthLoginButton extends StatelessWidget {
  const AuthLoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 245,
      height: 49,
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(1.00, 0.00),
          end: Alignment(-1, 0),
          colors: [Color(0xFF4C2A1A), Color(0xFFA67359)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(33),
        ),
        shadows: [
          BoxShadow(
            color: Color(0xA5000000),
            blurRadius: 15,
            offset: Offset(2, 2),
            spreadRadius: -2,
          )
        ],
      ),
      child: TextButton(
        onPressed: () {
          Get.offNamed(Routes.MAIN);
        },
        child: Text(
          'Login',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
      ),
    );
  }
}

class AuthScreenAppName extends StatelessWidget {
  const AuthScreenAppName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '${AppDetails.appName.substring(
              0,
              AppDetails.appName.indexOf(' '),
            )}\n',
            style: TextStyle(
              color: Colors.white,
              fontSize: 64,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          TextSpan(
            text: AppDetails.appName.substring(
              AppDetails.appName.indexOf(' ') + 1,
            ),
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
