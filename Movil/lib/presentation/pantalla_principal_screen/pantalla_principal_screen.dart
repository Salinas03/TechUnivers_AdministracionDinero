import 'bloc/pantalla_principal_bloc.dart';
import 'models/pantalla_principal_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_crear_page/pantalla_plan_de_ahorro_crear_page.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_modificaci_n_page/pantalla_plan_de_ahorro_modificaci_n_page.dart';
import 'package:financia/widgets/custom_bottom_bar.dart';
import 'package:financia/widgets/custom_elevated_button.dart';
import 'package:financia/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PantallaPrincipalScreen extends StatelessWidget {
  PantallaPrincipalScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaPrincipalBloc>(
        create: (context) => PantallaPrincipalBloc(PantallaPrincipalState(
            pantallaPrincipalModelObj: PantallaPrincipalModel()))
          ..add(PantallaPrincipalInitialEvent()),
        child: PantallaPrincipalScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildMainSection(context),
                  SizedBox(height: 21.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    GestureDetector(
                        onTap: () {
                          onTapFortyFour(context);
                        },
                        child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child: Container(
                                height: 81.v,
                                width: 112.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 28.h, vertical: 10.v),
                                decoration: AppDecoration.fillOnPrimary
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder5),
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: SizedBox(
                                              width: 54.h,
                                              child: Text(
                                                  "msg_gr_fica_de_avances".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: theme
                                                      .textTheme.bodySmall))),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgLineChart,
                                          height: 36.v,
                                          width: 55.h,
                                          alignment: Alignment.bottomCenter)
                                    ])))),
                    Padding(
                        padding: EdgeInsets.only(left: 11.h),
                        child: BlocSelector<PantallaPrincipalBloc,
                                PantallaPrincipalState, TextEditingController?>(
                            selector: (state) => state.ahorroOneController,
                            builder: (context, ahorroOneController) {
                              return CustomTextFormField(
                                  width: 110.h,
                                  controller: ahorroOneController,
                                  hintText: "lbl_plan_de_ahorro".tr,
                                  suffix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          -61.h, 27.v, 30.h, 4.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgAhorro1,
                                          height: 50.v,
                                          width: 40.h)),
                                  suffixConstraints:
                                      BoxConstraints(maxHeight: 81.v),
                                  contentPadding: EdgeInsets.only(
                                      left: 15.h, top: 33.v, bottom: 33.v),
                                  borderDecoration:
                                      TextFormFieldStyleHelper.fillOnPrimary,
                                  fillColor: theme.colorScheme.onPrimary
                                      .withOpacity(1));
                            }))
                  ]),
                  SizedBox(height: 15.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    GestureDetector(
                        onTap: () {
                          onTapFortyOne(context);
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 26.h, vertical: 1.v),
                            decoration: AppDecoration.fillOnPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 8.v),
                                  SizedBox(
                                      width: 58.h,
                                      child: Text("msg_reporte_de_finanzas".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.bodySmall)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFolder,
                                      height: 50.v,
                                      width: 43.h)
                                ]))),
                    Padding(
                        padding: EdgeInsets.only(left: 11.h),
                        child: BlocSelector<PantallaPrincipalBloc,
                                PantallaPrincipalState, TextEditingController?>(
                            selector: (state) => state.metaOneController,
                            builder: (context, metaOneController) {
                              return CustomTextFormField(
                                  width: 111.h,
                                  controller: metaOneController,
                                  hintText: "lbl_tus_metas".tr,
                                  textInputAction: TextInputAction.done,
                                  suffix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          -49.h, 30.v, 30.h, 5.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgMeta1,
                                          height: 49.v,
                                          width: 45.h)),
                                  suffixConstraints:
                                      BoxConstraints(maxHeight: 86.v),
                                  contentPadding: EdgeInsets.only(
                                      left: 26.h, top: 35.v, bottom: 35.v),
                                  borderDecoration:
                                      TextFormFieldStyleHelper.fillOnPrimary,
                                  fillColor: theme.colorScheme.onPrimary
                                      .withOpacity(1));
                            }))
                  ]),
                  SizedBox(height: 15.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    SizedBox(
                        height: 87.v,
                        width: 112.h,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          CustomElevatedButton(
                              height: 86.v,
                              width: 112.h,
                              text: "lbl_quienes_somos".tr,
                              buttonStyle: CustomButtonStyles.fillOnPrimary,
                              buttonTextStyle: theme.textTheme.bodySmall!,
                              onPressed: () {
                                onTapQuienesSomos(context);
                              },
                              alignment: Alignment.center),
                          CustomImageView(
                              imagePath: ImageConstant.imgAskQuestion,
                              height: 57.v,
                              width: 43.h,
                              alignment: Alignment.bottomCenter)
                        ])),
                    GestureDetector(
                        onTap: () {
                          onTapThirtyNine(context);
                        },
                        child: Container(
                            margin: EdgeInsets.only(left: 11.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 22.h, vertical: 7.v),
                            decoration: AppDecoration.fillOnPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 2.v),
                                  SizedBox(
                                      width: 66.h,
                                      child: Text(
                                          "msg_acerca_de_la_aplicaci_n".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.bodySmall)),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgMobileTaxiService,
                                      height: 40.v,
                                      width: 44.h,
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.only(right: 8.h))
                                ])))
                  ]),
                  SizedBox(height: 14.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    GestureDetector(
                        onTap: () {
                          onTapThirtyEight(context);
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 22.h, vertical: 3.v),
                            decoration: AppDecoration.fillOnPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 6.v),
                                  SizedBox(
                                      width: 65.h,
                                      child: Text(
                                          "msg_terminos_y_condiciones".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.bodySmall)),
                                  SizedBox(height: 1.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgContacts,
                                      height: 43.v,
                                      width: 46.h)
                                ]))),
                    GestureDetector(
                        onTap: () {
                          onTapThirtySeven(context);
                        },
                        child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.only(left: 11.h),
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child: Container(
                                height: 86.v,
                                width: 112.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 27.h, vertical: 1.v),
                                decoration: AppDecoration.fillOnPrimary
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder5),
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              width: 55.h,
                                              margin: EdgeInsets.only(top: 7.v),
                                              child: Text(
                                                  "msg_aviso_de_privacidad".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: theme
                                                      .textTheme.bodySmall))),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgBookmark,
                                          height: 58.v,
                                          width: 48.h,
                                          alignment: Alignment.bottomCenter)
                                    ]))))
                  ]),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildBottomBarSection(context)));
  }

  /// Section Widget
  Widget _buildMainSection(BuildContext context) {
    return SizedBox(
        height: 162.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgDiseOSinTTulo127x240,
              height: 127.v,
              width: 240.h,
              alignment: Alignment.topLeft),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  width: 190.h,
                  margin: EdgeInsets.only(left: 47.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_hola_de_nuevo2".tr,
                            style:
                                CustomTextStyles.titleMediumPrimaryContainer_1),
                        TextSpan(
                            text: "\n".tr,
                            style: CustomTextStyles
                                .titleMediumPrimaryContainerSemiBold),
                        TextSpan(
                            text: "msg_un_centavo_ahorrado".tr,
                            style:
                                CustomTextStyles.bodySmallPrimaryContainerLight)
                      ]),
                      textAlign: TextAlign.left))),
          Align(
              alignment: Alignment.topRight,
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.circleBorder64),
                  child: Container(
                      height: 127.v,
                      width: 128.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.h, vertical: 11.v),
                      decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder64),
                      child: Stack(alignment: Alignment.topRight, children: [
                        Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                height: 79.v,
                                width: 84.h,
                                decoration: BoxDecoration(
                                    color: appTheme.blueGray100,
                                    borderRadius:
                                        BorderRadius.circular(42.h)))),
                        CustomImageView(
                            imagePath: ImageConstant.imgAccount,
                            height: 61.v,
                            width: 60.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 5.v, right: 12.h))
                      ])))),
          CustomImageView(
              imagePath: ImageConstant.imgMobileTaxiService,
              height: 40.v,
              width: 44.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 87.h, bottom: 39.v))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Image4:
        return AppRoutes.pantallaPlanDeAhorroCrearPage;
      case BottomBarEnum.Vector:
        return "/";
      case BottomBarEnum.Image14:
        return AppRoutes.pantallaPlanDeAhorroModificaciNPage;
      case BottomBarEnum.Image20:
        return "/";
      case BottomBarEnum.Image7:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.pantallaPlanDeAhorroCrearPage:
        return PantallaPlanDeAhorroCrearPage.builder(context);
      case AppRoutes.pantallaPlanDeAhorroModificaciNPage:
        return PantallaPlanDeAhorroModificaciNPage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the pantallaGrFicasTabContainerScreen when the action is triggered.
  onTapFortyFour(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pantallaGrFicasTabContainerScreen,
    );
  }

  /// Navigates to the pantallaReporteFinanzasScreen when the action is triggered.
  onTapFortyOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pantallaReporteFinanzasScreen,
    );
  }

  /// Navigates to the pantallaQuienesSomosScreen when the action is triggered.
  onTapQuienesSomos(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pantallaQuienesSomosScreen,
    );
  }

  /// Navigates to the pantallaAcercaDeLaAplicaciNScreen when the action is triggered.
  onTapThirtyNine(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pantallaAcercaDeLaAplicaciNScreen,
    );
  }

  /// Navigates to the pantallaTerminosYCondicionesScreen when the action is triggered.
  onTapThirtyEight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pantallaTerminosYCondicionesScreen,
    );
  }

  /// Navigates to the pantallaAvisoDePrivacidadScreen when the action is triggered.
  onTapThirtySeven(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pantallaAvisoDePrivacidadScreen,
    );
  }
}
