import 'bloc/pantalla_quienes_somos_bloc.dart';
import 'models/pantalla_quienes_somos_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_crear_page/pantalla_plan_de_ahorro_crear_page.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_modificaci_n_page/pantalla_plan_de_ahorro_modificaci_n_page.dart';
import 'package:financia/widgets/custom_bottom_bar.dart';
import 'package:financia/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PantallaQuienesSomosScreen extends StatelessWidget {
  PantallaQuienesSomosScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaQuienesSomosBloc>(
      create: (context) => PantallaQuienesSomosBloc(PantallaQuienesSomosState(
        pantallaQuienesSomosModelObj: PantallaQuienesSomosModel(),
      ))
        ..add(PantallaQuienesSomosInitialEvent()),
      child: PantallaQuienesSomosScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PantallaQuienesSomosBloc, PantallaQuienesSomosState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              child: Column(
                children: [
                  _buildQuienesSomosSection(context),
                  SizedBox(height: 21.v),
                  Container(
                    margin: EdgeInsets.only(
                      left: 38.h,
                      right: 43.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 29.h,
                      vertical: 31.v,
                    ),
                    decoration: AppDecoration.fillOnPrimary1.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 25.v),
                        SizedBox(
                          width: 205.h,
                          child: Text(
                            "msg_en_financia_no".tr,
                            maxLines: 9,
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
            bottomNavigationBar: _buildBottomBarSection(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildQuienesSomosSection(BuildContext context) {
    return SizedBox(
      height: 188.v,
      width: 346.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomElevatedButton(
            height: 64.v,
            width: 265.h,
            text: "lbl_quienes_somos".tr,
            buttonStyle: CustomButtonStyles.fillOnPrimary,
            buttonTextStyle: theme.textTheme.titleMedium!,
            alignment: Alignment.bottomCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgDiseOSinTTulo,
            height: 145.v,
            width: 346.h,
            alignment: Alignment.topCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgAskQuestion,
            height: 51.adaptSize,
            width: 51.adaptSize,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 57.h,
              bottom: 8.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
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
