import 'bloc/pantalla_terminos_y_condiciones_bloc.dart';
import 'models/pantalla_terminos_y_condiciones_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_crear_page/pantalla_plan_de_ahorro_crear_page.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_modificaci_n_page/pantalla_plan_de_ahorro_modificaci_n_page.dart';
import 'package:financia/widgets/custom_bottom_bar.dart';
import 'package:financia/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class PantallaTerminosYCondicionesScreen extends StatelessWidget {
  PantallaTerminosYCondicionesScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaTerminosYCondicionesBloc>(
      create: (context) =>
          PantallaTerminosYCondicionesBloc(PantallaTerminosYCondicionesState(
        pantallaTerminosYCondicionesModelObj:
            PantallaTerminosYCondicionesModel(),
      ))
            ..add(PantallaTerminosYCondicionesInitialEvent()),
      child: PantallaTerminosYCondicionesScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PantallaTerminosYCondicionesBloc,
        PantallaTerminosYCondicionesState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              child: Column(
                children: [
                  _buildDiseOSinTTuloStack(context),
                  SizedBox(height: 16.v),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    color: theme.colorScheme.onPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Container(
                      height: 336.v,
                      width: 265.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 13.v,
                      ),
                      decoration: AppDecoration.fillOnPrimary1.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              width: 219.h,
                              child: Text(
                                "msg_estos_t_rminos_rigen".tr,
                                maxLines: 20,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodyMediumOnError,
                              ),
                            ),
                          ),
                          CustomIconButton(
                            height: 25.v,
                            width: 150.h,
                            alignment: Alignment.bottomCenter,
                            child: CustomImageView(),
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
      height: 192.v,
      width: 346.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDiseOSinTTulo,
            height: 145.v,
            width: 346.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 40.h,
                top: 128.v,
                right: 40.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 26.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgContacts,
                    height: 47.v,
                    width: 53.h,
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  Container(
                    width: 88.h,
                    margin: EdgeInsets.only(
                      left: 37.h,
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "msg_terminos_y_condiciones".tr,
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
