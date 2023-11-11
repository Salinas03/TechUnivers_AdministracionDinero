import 'bloc/pantalla_metas_bloc.dart';
import 'models/pantalla_metas_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_crear_page/pantalla_plan_de_ahorro_crear_page.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_modificaci_n_page/pantalla_plan_de_ahorro_modificaci_n_page.dart';
import 'package:financia/widgets/app_bar/appbar_subtitle.dart';
import 'package:financia/widgets/app_bar/custom_app_bar.dart';
import 'package:financia/widgets/custom_bottom_bar.dart';
import 'package:financia/widgets/custom_outlined_button.dart';
import 'package:financia/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PantallaMetasScreen extends StatelessWidget {
  PantallaMetasScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaMetasBloc>(
      create: (context) => PantallaMetasBloc(PantallaMetasState(
        pantallaMetasModelObj: PantallaMetasModel(),
      ))
        ..add(PantallaMetasInitialEvent()),
      child: PantallaMetasScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 33.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildGoal(context),
              SizedBox(height: 52.v),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text(
                  "msg_inserta_la_meta".tr,
                  style: CustomTextStyles.bodyMedium13,
                ),
              ),
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  right: 14.h,
                ),
                child: BlocSelector<PantallaMetasBloc, PantallaMetasState,
                    TextEditingController?>(
                  selector: (state) => state.languageController,
                  builder: (context, languageController) {
                    return CustomTextFormField(
                      controller: languageController,
                      hintText: "lbl".tr,
                      hintStyle: CustomTextStyles.bodyMediumPrimaryContainer,
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 9.h,
                        vertical: 7.v,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 25.v),
              CustomOutlinedButton(
                width: 98.h,
                text: "lbl_agregar".tr,
                margin: EdgeInsets.only(left: 96.h),
                buttonTextStyle: CustomTextStyles.bodyMediumOnError,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 48.v,
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_metas".tr,
      ),
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildGoal(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGoal,
            height: 63.v,
            width: 61.h,
            margin: EdgeInsets.only(
              top: 12.v,
              bottom: 3.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              right: 12.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 161.h,
                  child: Text(
                    "msg_cuanto_m_s_grande".tr,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMedium13,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 31.h),
                  child: Text(
                    "lbl_metas2".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
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
