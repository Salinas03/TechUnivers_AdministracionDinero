import 'bloc/pantalla_sueldo_fijo_tab_container_bloc.dart';
import 'models/pantalla_sueldo_fijo_tab_container_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:financia/presentation/pantalla_sueldo_fijo_page/pantalla_sueldo_fijo_page.dart';
import 'package:financia/widgets/app_bar/appbar_image.dart';
import 'package:financia/widgets/app_bar/appbar_title.dart';
import 'package:financia/widgets/app_bar/custom_app_bar.dart';
import 'package:financia/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class PantallaSueldoFijoTabContainerScreen extends StatefulWidget {
  const PantallaSueldoFijoTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PantallaSueldoFijoTabContainerScreenState createState() =>
      PantallaSueldoFijoTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaSueldoFijoTabContainerBloc>(
      create: (context) => PantallaSueldoFijoTabContainerBloc(
          PantallaSueldoFijoTabContainerState(
        pantallaSueldoFijoTabContainerModelObj:
            PantallaSueldoFijoTabContainerModel(),
      ))
        ..add(PantallaSueldoFijoTabContainerInitialEvent()),
      child: PantallaSueldoFijoTabContainerScreen(),
    );
  }
}

class PantallaSueldoFijoTabContainerScreenState
    extends State<PantallaSueldoFijoTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PantallaSueldoFijoTabContainerBloc,
        PantallaSueldoFijoTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 51.v),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 40.h),
                        child: Text(
                          "msg_de_cuanto_es_tu".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Container(
                      width: 285.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.h,
                        vertical: 3.v,
                      ),
                      decoration: AppDecoration.fillBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Text(
                        "lbl".tr,
                        style: CustomTextStyles.bodySmallPrimaryContainer_1,
                      ),
                    ),
                    SizedBox(height: 25.v),
                    Text(
                      "msg_cada_cu_nto_tiempo".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 35.v),
                    _buildSemanalButton(context),
                    SizedBox(height: 11.v),
                    _buildQuincenalButton(context),
                    SizedBox(height: 12.v),
                    _buildMensualButton(context),
                    SizedBox(height: 28.v),
                    Text(
                      "msg_recibes_prestaciones".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 33.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 49.h,
                        right: 43.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 28.v,
                            width: 101.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 5.v),
                                    child: Text(
                                      "lbl_si".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                                _buildSiButton(context),
                              ],
                            ),
                          ),
                          _buildNoButton(context),
                        ],
                      ),
                    ),
                    SizedBox(height: 42.v),
                    Text(
                      "msg_ingresa_el_monto".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 16.v),
                    Container(
                      width: 285.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.h,
                        vertical: 3.v,
                      ),
                      decoration: AppDecoration.fillBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Text(
                        "lbl".tr,
                        style: CustomTextStyles.bodySmallPrimaryContainer_1,
                      ),
                    ),
                    SizedBox(height: 28.v),
                    SizedBox(
                      height: 28.v,
                      width: 189.h,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "msg_tienes_alg_n_ingreso".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 2.h,
                                bottom: 8.v,
                              ),
                              child: Text(
                                "lbl_si".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "lbl_no".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "lbl_si".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Container(
                      height: 28.v,
                      width: 101.h,
                      child: TabBar(
                        controller: tabviewController,
                        labelPadding: EdgeInsets.zero,
                        labelColor: theme.colorScheme.onError,
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
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                          borderRadius: BorderRadius.circular(
                            14.h,
                          ),
                          border: Border.all(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            width: 2.h,
                          ),
                        ),
                        tabs: [
                          Tab(
                            child: Text(
                              "lbl_si".tr,
                            ),
                          ),
                          Tab(
                            child: Text(
                              "lbl_si".tr,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 937.v,
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          PantallaSueldoFijoPage.builder(context),
                          PantallaSueldoFijoPage.builder(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 127.v,
      centerTitle: true,
      title: Container(
        decoration: AppDecoration.outlineOnPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Row(
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: theme.colorScheme.onPrimary.withOpacity(1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(5.h),
                ),
              ),
              child: Container(
                height: 90.v,
                width: 88.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 19.h,
                  vertical: 9.v,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(5.h),
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AppbarImage(
                      imagePath: ImageConstant.imgAhorro1,
                      margin: EdgeInsets.only(
                        top: 1.v,
                        right: 1.h,
                      ),
                    ),
                    AppbarImage(
                      imagePath: ImageConstant.imgAhorro1,
                      margin: EdgeInsets.only(
                        top: 1.v,
                        right: 1.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AppbarTitle(
              text: "lbl_sueldo_fijo".tr,
              margin: EdgeInsets.fromLTRB(47.h, 33.v, 83.h, 37.v),
            ),
          ],
        ),
      ),
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildSemanalButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 153.h,
      text: "lbl_semanal".tr,
    );
  }

  /// Section Widget
  Widget _buildQuincenalButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 153.h,
      text: "lbl_quincenal".tr,
    );
  }

  /// Section Widget
  Widget _buildMensualButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 153.h,
      text: "lbl_mensual".tr,
    );
  }

  /// Section Widget
  Widget _buildSiButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 101.h,
      text: "lbl_si".tr,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildNoButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 101.h,
      text: "lbl_no".tr,
    );
  }
}
