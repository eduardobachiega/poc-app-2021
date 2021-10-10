import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mobx/mobx.dart';
import 'package:hacktoberapp/app/shared/constants/colors.dart' as AppColors;

class SplashPage extends StatefulWidget {
  final String title;

  const SplashPage({Key? key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late ReactionDisposer disposer;

  @override
  void initState() {
    super.initState();
    disposer = autorun((_) {
      _proceed();
    }, delay: 4000);
  }

  @override
  void dispose() {
    super.dispose();
    disposer();
  }

  _proceed() {
    Modular.to.pushReplacementNamed("/home");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: AppColors.SPLASH_BK,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 180,
                  child: Image.asset("hacktober.jpeg"),
                ),
                SizedBox(height: 20,),
                SpinKitThreeBounce(
                  size: 75.0,
                  color: AppColors.PRIMARY_COLOR,
                  duration: Duration(milliseconds: 1500),
                ),
              ],
            )
          )
      ),
    );
  }
}
