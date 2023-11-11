import '../pantalla_plan_de_ahorro_crear_page/widgets/planscreen_item_widget.dart';
import 'bloc/pantalla_plan_de_ahorro_crear_bloc.dart';
import 'models/pantalla_plan_de_ahorro_crear_model.dart';
import 'models/planscreen_item_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:financia/widgets/app_bar/appbar_subtitle.dart';
import 'package:financia/widgets/app_bar/custom_app_bar.dart';
import 'package:financia/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class PantallaPlanDeAhorroCrearPage extends StatelessWidget {
  const PantallaPlanDeAhorroCrearPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaPlanDeAhorroCrearBloc>(
        create: (context) => PantallaPlanDeAhorroCrearBloc(
            PantallaPlanDeAhorroCrearState(
                pantallaPlanDeAhorroCrearModelObj:
                    PantallaPlanDeAhorroCrearModel()))
          ..add(PantallaPlanDeAhorroCrearInitialEvent()),
        child: PantallaPlanDeAhorroCrearPage());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 50.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildPlanScreen(context),
                      SizedBox(height: 50.v),
                      CustomOutlinedButton(
                          height: 40.v,
                          width: 150.h,
                          text: "lbl_generar".tr,
                          buttonStyle: CustomButtonStyles.outlineOnPrimary,
                          buttonTextStyle: theme.textTheme.bodyMedium!,
                          onPressed: () {
                            onTapGenerar(context);
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_plan_de_ahorro".tr),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildPlanScreen(BuildContext context) {
    return BlocSelector<PantallaPlanDeAhorroCrearBloc,
            PantallaPlanDeAhorroCrearState, PantallaPlanDeAhorroCrearModel?>(
        selector: (state) => state.pantallaPlanDeAhorroCrearModelObj,
        builder: (context, pantallaPlanDeAhorroCrearModelObj) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 40.v);
              },
              itemCount: pantallaPlanDeAhorroCrearModelObj
                      ?.planscreenItemList.length ??
                  0,
              itemBuilder: (context, index) {
                PlanscreenItemModel model = pantallaPlanDeAhorroCrearModelObj
                        ?.planscreenItemList[index] ??
                    PlanscreenItemModel();
                return PlanscreenItemWidget(model);
              });
        });
  }

  /// Navigates to the pantallaPlanesDeAhorroTotalesScreen when the action is triggered.
  onTapGenerar(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pantallaPlanesDeAhorroTotalesScreen,
    );
  }
}
