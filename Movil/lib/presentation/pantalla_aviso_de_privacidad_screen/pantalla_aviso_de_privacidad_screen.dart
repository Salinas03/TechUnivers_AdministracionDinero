import 'bloc/pantalla_aviso_de_privacidad_bloc.dart';
import 'models/pantalla_aviso_de_privacidad_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_crear_page/pantalla_plan_de_ahorro_crear_page.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_modificaci_n_page/pantalla_plan_de_ahorro_modificaci_n_page.dart';
import 'package:financia/widgets/custom_bottom_bar.dart';
import 'package:financia/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class PantallaAvisoDePrivacidadScreen extends StatelessWidget {
  PantallaAvisoDePrivacidadScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaAvisoDePrivacidadBloc>(
      create: (context) =>
          PantallaAvisoDePrivacidadBloc(PantallaAvisoDePrivacidadState(
        pantallaAvisoDePrivacidadModelObj: PantallaAvisoDePrivacidadModel(),
      ))
            ..add(PantallaAvisoDePrivacidadInitialEvent()),
      child: PantallaAvisoDePrivacidadScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PantallaAvisoDePrivacidadBloc,
        PantallaAvisoDePrivacidadState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDiseOSinTTuloStack(context),
                  SizedBox(height: 27.v),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 354.v,
                      width: 265.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgMobileTaxiService40x44,
                            height: 40.v,
                            width: 44.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(
                              left: 6.h,
                              bottom: 45.v,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: theme.colorScheme.onPrimary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Container(
                                height: 354.v,
                                width: 265.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 17.h,
                                  vertical: 14.v,
                                ),
                                decoration:
                                    AppDecoration.fillOnPrimary1.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        width: 224.h,
                                        child: Text(
                                          "msg_al_utilizar_financia".tr,
                                          maxLines: 21,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .bodyMediumOnError,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 5.v),
                                      child: CustomIconButton(
                                        height: 25.v,
                                        width: 150.h,
                                        alignment: Alignment.bottomCenter,
                                        child: CustomImageView(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDiseOSinTTuloStack(BuildContext context) {
    return SizedBox(
      height: 184.v,
      width: 344.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDiseOSinTTulo152x344,
            height: 152.v,
            width: 344.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 44.h,
                top: 120.v,
                right: 35.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBookmark,
                    height: 58.v,
                    width: 48.h,
                  ),
                  Container(
                    width: 75.h,
                    margin: EdgeInsets.only(
                      left: 53.h,
                      top: 9.v,
                      bottom: 6.v,
                    ),
                    child: Text(
                      "msg_aviso_de_privacidad".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
}
