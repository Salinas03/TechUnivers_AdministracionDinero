import 'bloc/pantalla_bienvenida_bloc.dart';
import 'models/pantalla_bienvenida_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:financia/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class PantallaBienvenidaScreen extends StatelessWidget {
  const PantallaBienvenidaScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaBienvenidaBloc>(
        create: (context) => PantallaBienvenidaBloc(PantallaBienvenidaState(
            pantallaBienvenidaModelObj: PantallaBienvenidaModel()))
          ..add(PantallaBienvenidaInitialEvent()),
        child: PantallaBienvenidaScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<PantallaBienvenidaBloc, PantallaBienvenidaState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 7.h),
                  child: Column(children: [
                    _buildWelcomeScreen(context),
                    SizedBox(height: 12.v),
                    _buildDescriptionSection(context),
                    SizedBox(height: 59.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 52.h),
                            child: Text("msg_tu_tipo_de_sueldo".tr,
                                style: CustomTextStyles
                                    .bodySmallPrimaryContainer))),
                    SizedBox(height: 34.v),
                    Padding(
                        padding: EdgeInsets.only(left: 44.h, right: 39.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomOutlinedButton(
                                  height: 35.v,
                                  width: 91.h,
                                  text: "lbl_fijo".tr,
                                  onPressed: () {
                                    onTapFijo(context);
                                  }),
                              CustomOutlinedButton(
                                  height: 35.v,
                                  width: 91.h,
                                  text: "lbl_variable".tr,
                                  onPressed: () {
                                    onTapVariable(context);
                                  })
                            ])),
                    SizedBox(height: 69.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage4,
                        height: 106.v,
                        width: 127.h),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildWelcomeScreen(BuildContext context) {
    return SizedBox(
        height: 186.v,
        width: 346.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 78.v,
                  width: 90.h,
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 78.v,
                            width: 90.h,
                            decoration: BoxDecoration(
                                color:
                                    theme.colorScheme.onPrimary.withOpacity(1),
                                borderRadius: BorderRadius.circular(45.h)))),
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            height: 74.v,
                            width: 86.h,
                            child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 74.v,
                                          width: 86.h,
                                          decoration: BoxDecoration(
                                              color: theme.colorScheme.onError,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      43.h)))),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage17,
                                      height: 54.v,
                                      width: 50.h,
                                      alignment: Alignment.centerLeft,
                                      margin: EdgeInsets.only(left: 16.h))
                                ])))
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgDiseOSinTTulo138x346,
              height: 138.v,
              width: 346.h,
              alignment: Alignment.topCenter)
        ]));
  }

  /// Section Widget
  Widget _buildDescriptionSection(BuildContext context) {
    return Container(
        width: 300.h,
        margin: EdgeInsets.only(left: 27.h, right: 19.h),
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 14.v),
        decoration: AppDecoration.outlineOnPrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Container(
                  width: 217.h,
                  margin: EdgeInsets.only(right: 38.h),
                  child: Text("msg_hola_bienvenido".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallPrimaryContainer11))
            ]));
  }

  /// Navigates to the pantallaSueldoFijoTabContainerScreen when the action is triggered.
  onTapFijo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pantallaSueldoFijoTabContainerScreen,
    );
  }

  /// Navigates to the pantallaSueldoVariableTabContainerScreen when the action is triggered.
  onTapVariable(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pantallaSueldoVariableTabContainerScreen,
    );
  }
}
