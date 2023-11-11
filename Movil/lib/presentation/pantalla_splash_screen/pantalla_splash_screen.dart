import 'bloc/pantalla_splash_bloc.dart';
import 'models/pantalla_splash_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:flutter/material.dart';

class PantallaSplashScreen extends StatelessWidget {
  const PantallaSplashScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaSplashBloc>(
        create: (context) => PantallaSplashBloc(
            PantallaSplashState(pantallaSplashModelObj: PantallaSplashModel()))
          ..add(PantallaSplashInitialEvent()),
        child: PantallaSplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<PantallaSplashBloc, PantallaSplashState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgCapturaDePantalla,
                      height: 166.v,
                      width: 360.h,
                      alignment: Alignment.center))));
    });
  }
}
