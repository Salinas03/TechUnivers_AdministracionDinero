import 'bloc/pantalla_sueldo_variable_tab_container_bloc.dart';
import 'models/pantalla_sueldo_variable_tab_container_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:financia/presentation/pantalla_sueldo_variable_page/pantalla_sueldo_variable_page.dart';
import 'package:financia/widgets/app_bar/appbar_image.dart';
import 'package:financia/widgets/app_bar/appbar_title.dart';
import 'package:financia/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PantallaSueldoVariableTabContainerScreen extends StatefulWidget {
  const PantallaSueldoVariableTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PantallaSueldoVariableTabContainerScreenState createState() =>
      PantallaSueldoVariableTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaSueldoVariableTabContainerBloc>(
      create: (context) => PantallaSueldoVariableTabContainerBloc(
          PantallaSueldoVariableTabContainerState(
        pantallaSueldoVariableTabContainerModelObj:
            PantallaSueldoVariableTabContainerModel(),
      ))
        ..add(PantallaSueldoVariableTabContainerInitialEvent()),
      child: PantallaSueldoVariableTabContainerScreen(),
    );
  }
}

class PantallaSueldoVariableTabContainerScreenState
    extends State<PantallaSueldoVariableTabContainerScreen>
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

    return BlocBuilder<PantallaSueldoVariableTabContainerBloc,
        PantallaSueldoVariableTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 33.v),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 256.h,
                        margin: EdgeInsets.only(
                          left: 43.h,
                          right: 61.h,
                        ),
                        child: Text(
                          "msg_cada_cu_nto_tiempo2".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Container(
                      height: 28.v,
                      width: 153.h,
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
                              "lbl_semanal".tr,
                            ),
                          ),
                          Tab(
                            child: Text(
                              "lbl_semanal".tr,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 1415.v,
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          PantallaSueldoVariablePage.builder(context),
                          PantallaSueldoVariablePage.builder(context),
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
      height: 132.v,
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
              text: "lbl_sueldo_variable".tr,
              margin: EdgeInsets.only(
                left: 47.h,
                top: 31.v,
                bottom: 39.v,
              ),
            ),
            AppbarTitle(
              text: "lbl_sueldo_variable".tr,
              margin: EdgeInsets.only(
                top: 31.v,
                right: 49.h,
                bottom: 39.v,
              ),
            ),
          ],
        ),
      ),
      styleType: Style.bgOutline,
    );
  }
}
