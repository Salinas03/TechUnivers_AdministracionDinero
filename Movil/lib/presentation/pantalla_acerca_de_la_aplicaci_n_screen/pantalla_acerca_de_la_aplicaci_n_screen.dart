import 'bloc/pantalla_acerca_de_la_aplicaci_n_bloc.dart';
import 'models/pantalla_acerca_de_la_aplicaci_n_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_crear_page/pantalla_plan_de_ahorro_crear_page.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_modificaci_n_page/pantalla_plan_de_ahorro_modificaci_n_page.dart';
import 'package:financia/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PantallaAcercaDeLaAplicaciNScreen extends StatelessWidget {
  PantallaAcercaDeLaAplicaciNScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaAcercaDeLaAplicaciNBloc>(
      create: (context) =>
          PantallaAcercaDeLaAplicaciNBloc(PantallaAcercaDeLaAplicaciNState(
        pantallaAcercaDeLaAplicaciNModelObj: PantallaAcercaDeLaAplicaciNModel(),
      ))
            ..add(PantallaAcercaDeLaAplicaciNInitialEvent()),
      child: PantallaAcercaDeLaAplicaciNScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PantallaAcercaDeLaAplicaciNBloc,
        PantallaAcercaDeLaAplicaciNState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              child: Column(
                children: [
                  _buildAboutScreen(context),
                  SizedBox(height: 21.v),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 27.h,
                      vertical: 40.v,
                    ),
                    decoration: AppDecoration.fillOnPrimary1.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 36.v),
                        SizedBox(
                          width: 206.h,
                          child: Text(
                            "msg_con_financia_el".tr,
                            maxLines: 7,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumOnError,
                          ),
                        ),
                      ],
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
  Widget _buildAboutScreen(BuildContext context) {
    return SizedBox(
      height: 186.v,
      width: 346.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 151.v,
              width: 346.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgDiseOSinTTulo151x346,
                    height: 151.v,
                    width: 346.h,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgDiseOSinTTulo151x346,
                    height: 151.v,
                    width: 346.h,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 40.h,
                top: 122.v,
                right: 40.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMobileTaxiService,
                    height: 40.v,
                    width: 62.h,
                    margin: EdgeInsets.only(bottom: 4.v),
                  ),
                  Container(
                    width: 90.h,
                    margin: EdgeInsets.only(
                      left: 44.h,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "msg_acerca_de_la_aplicaci_n".tr,
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
