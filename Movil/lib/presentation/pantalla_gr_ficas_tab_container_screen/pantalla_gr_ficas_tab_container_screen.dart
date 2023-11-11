import 'bloc/pantalla_gr_ficas_tab_container_bloc.dart';
import 'models/pantalla_gr_ficas_tab_container_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:financia/presentation/pantalla_gr_ficas_page/pantalla_gr_ficas_page.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_crear_page/pantalla_plan_de_ahorro_crear_page.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_modificaci_n_page/pantalla_plan_de_ahorro_modificaci_n_page.dart';
import 'package:financia/widgets/app_bar/appbar_subtitle.dart';
import 'package:financia/widgets/app_bar/custom_app_bar.dart';
import 'package:financia/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class PantallaGrFicasTabContainerScreen extends StatefulWidget {
  const PantallaGrFicasTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PantallaGrFicasTabContainerScreenState createState() =>
      PantallaGrFicasTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaGrFicasTabContainerBloc>(
      create: (context) =>
          PantallaGrFicasTabContainerBloc(PantallaGrFicasTabContainerState(
        pantallaGrFicasTabContainerModelObj: PantallaGrFicasTabContainerModel(),
      ))
            ..add(PantallaGrFicasTabContainerInitialEvent()),
      child: PantallaGrFicasTabContainerScreen(),
    );
  }
}

class PantallaGrFicasTabContainerScreenState
    extends State<PantallaGrFicasTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PantallaGrFicasTabContainerBloc,
        PantallaGrFicasTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 50.v),
                  _buildPriceRow(context),
                  SizedBox(height: 66.v),
                  Text(
                    "msg_gr_fica_de_ingresos".tr,
                    style: CustomTextStyles.bodySmallPrimaryContainer,
                  ),
                  SizedBox(height: 15.v),
                  Container(
                    height: 26.v,
                    width: 144.h,
                    margin: EdgeInsets.only(right: 27.h),
                    child: TabBar(
                      controller: tabviewController,
                      labelPadding: EdgeInsets.zero,
                      labelColor:
                          theme.colorScheme.primaryContainer.withOpacity(1),
                      labelStyle: TextStyle(
                        fontSize: 12.fSize,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                      unselectedLabelColor: theme.colorScheme.onError,
                      unselectedLabelStyle: TextStyle(
                        fontSize: 12.fSize,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5.h,
                        ),
                        border: Border.all(
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                          width: 2.h,
                        ),
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            "lbl_ltimo_mes".tr,
                          ),
                        ),
                        Tab(
                          child: Text(
                            "lbl_mes_pasado".tr,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 327.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        PantallaGrFicasPage.builder(context),
                        PantallaGrFicasPage.builder(context),
                      ],
                    ),
                  ),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_gr_ficas".tr,
      ),
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildPriceRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 22.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 50.v,
            width: 130.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 39.h,
                      bottom: 9.v,
                    ),
                    child: Text(
                      "lbl_00_00".tr,
                      style: CustomTextStyles.bodySmallPrimaryContainer,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 4.v,
                    ),
                    decoration: AppDecoration.outlineOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage9,
                          height: 29.v,
                          width: 30.h,
                          margin: EdgeInsets.only(
                            top: 3.v,
                            bottom: 4.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10.h,
                            bottom: 22.v,
                          ),
                          child: Text(
                            "lbl_ingresos".tr,
                            style: CustomTextStyles.bodySmallPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50.v,
            width: 130.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 5.v,
                      right: 33.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_gastos".tr,
                            style: CustomTextStyles.bodySmallPrimaryContainer,
                          ),
                        ),
                        SizedBox(height: 4.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "lbl_00_00".tr,
                            style: CustomTextStyles.bodySmallPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 50.v,
                    width: 130.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 9.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.outlineOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage10,
                      height: 29.v,
                      width: 30.h,
                      alignment: Alignment.topLeft,
                    ),
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
