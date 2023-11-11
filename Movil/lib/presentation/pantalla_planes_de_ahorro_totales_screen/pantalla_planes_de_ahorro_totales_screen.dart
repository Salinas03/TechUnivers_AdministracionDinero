import 'bloc/pantalla_planes_de_ahorro_totales_bloc.dart';
import 'models/pantalla_planes_de_ahorro_totales_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_crear_page/pantalla_plan_de_ahorro_crear_page.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_modificaci_n_page/pantalla_plan_de_ahorro_modificaci_n_page.dart';
import 'package:financia/widgets/custom_bottom_bar.dart';
import 'package:financia/widgets/custom_elevated_button.dart';
import 'package:financia/widgets/custom_icon_button.dart';
import 'package:financia/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PantallaPlanesDeAhorroTotalesScreen extends StatelessWidget {
  PantallaPlanesDeAhorroTotalesScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaPlanesDeAhorroTotalesBloc>(
        create: (context) => PantallaPlanesDeAhorroTotalesBloc(
            PantallaPlanesDeAhorroTotalesState(
                pantallaPlanesDeAhorroTotalesModelObj:
                    PantallaPlanesDeAhorroTotalesModel()))
          ..add(PantallaPlanesDeAhorroTotalesInitialEvent()),
        child: PantallaPlanesDeAhorroTotalesScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<PantallaPlanesDeAhorroTotalesBloc,
        PantallaPlanesDeAhorroTotalesState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    _buildPlanesDeAhorroButton(context),
                    SizedBox(height: 40.v),
                    Text("msg_planes_de_ahorro2".tr,
                        style: theme.textTheme.labelLarge),
                    SizedBox(height: 27.v),
                    _buildComputadoraButton(context),
                    SizedBox(height: 17.v),
                    _buildBaO(context, baO: "lbl_autom_vil".tr),
                    SizedBox(height: 17.v),
                    _buildBaO(context, baO: "lbl_ba_o".tr),
                    SizedBox(height: 17.v),
                    _buildTelFonoButton(context),
                    Spacer(),
                    SizedBox(height: 42.v),
                    _buildGenerarPlanDeAhorroButton(context)
                  ])),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildPlanesDeAhorroButton(BuildContext context) {
    return CustomElevatedButton(text: "msg_planes_de_ahorro".tr);
  }

  /// Section Widget
  Widget _buildComputadoraButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 50.v,
        text: "lbl_computadora".tr,
        margin: EdgeInsets.only(left: 44.h, right: 50.h),
        buttonStyle: CustomButtonStyles.outlineOnPrimaryTL15,
        buttonTextStyle: theme.textTheme.labelLarge!);
  }

  /// Section Widget
  Widget _buildTelFonoButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 50.v,
        text: "lbl_tel_fono".tr,
        margin: EdgeInsets.only(left: 44.h, right: 50.h),
        buttonStyle: CustomButtonStyles.outlineOnPrimaryTL151,
        buttonTextStyle: theme.textTheme.labelLarge!);
  }

  /// Section Widget
  Widget _buildGenerarPlanDeAhorroButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 30.v,
        width: 200.h,
        text: "msg_generar_plan_de".tr,
        buttonTextStyle: CustomTextStyles.labelLargeOnError,
        onPressed: () {
          onTapGenerarPlanDeAhorroButton(context);
        });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildBaO(
    BuildContext context, {
    required String baO,
  }) {
    return SizedBox(
        height: 50.v,
        width: 266.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Text(baO,
                  style: theme.textTheme.labelLarge!.copyWith(
                      color:
                          theme.colorScheme.primaryContainer.withOpacity(1)))),
          CustomIconButton(
              height: 50.v,
              width: 266.h,
              alignment: Alignment.center,
              child: CustomImageView())
        ]));
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

  /// Navigates to the pantallaPlanDeAhorroCrearContainerScreen when the action is triggered.
  onTapGenerarPlanDeAhorroButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pantallaPlanDeAhorroCrearContainerScreen,
    );
  }
}
