import '../pantalla_reporte_finanzas_screen/widgets/reportefinanzasgrid_item_widget.dart';
import 'bloc/pantalla_reporte_finanzas_bloc.dart';
import 'models/pantalla_reporte_finanzas_model.dart';
import 'models/reportefinanzasgrid_item_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_crear_page/pantalla_plan_de_ahorro_crear_page.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_modificaci_n_page/pantalla_plan_de_ahorro_modificaci_n_page.dart';
import 'package:financia/widgets/custom_bottom_bar.dart';
import 'package:financia/widgets/custom_checkbox_button.dart';
import 'package:financia/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PantallaReporteFinanzasScreen extends StatelessWidget {
  PantallaReporteFinanzasScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaReporteFinanzasBloc>(
      create: (context) =>
          PantallaReporteFinanzasBloc(PantallaReporteFinanzasState(
        pantallaReporteFinanzasModelObj: PantallaReporteFinanzasModel(),
      ))
            ..add(PantallaReporteFinanzasInitialEvent()),
      child: PantallaReporteFinanzasScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomElevatedButton(
                text: "msg_reporte_de_finanzas".tr,
              ),
              SizedBox(height: 58.v),
              _buildReporteFinanzasGrid(context),
              SizedBox(height: 70.v),
              _buildNoviembreRow(context),
              Divider(
                color: theme.colorScheme.primaryContainer.withOpacity(1),
                indent: 56.h,
                endIndent: 18.h,
              ),
              SizedBox(height: 21.v),
              Container(
                height: 20.v,
                width: 189.h,
                margin: EdgeInsets.only(right: 68.h),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    _buildGroup153CheckBox(context),
                    _buildGastosCheckBox(context),
                    _buildIngresosCheckBox(context),
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
  }

  /// Section Widget
  Widget _buildReporteFinanzasGrid(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 21.h,
          right: 18.h,
        ),
        child: BlocSelector<PantallaReporteFinanzasBloc,
            PantallaReporteFinanzasState, PantallaReporteFinanzasModel?>(
          selector: (state) => state.pantallaReporteFinanzasModelObj,
          builder: (context, pantallaReporteFinanzasModelObj) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 51.v,
                crossAxisCount: 2,
                mainAxisSpacing: 61.h,
                crossAxisSpacing: 61.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: pantallaReporteFinanzasModelObj
                      ?.reportefinanzasgridItemList.length ??
                  0,
              itemBuilder: (context, index) {
                ReportefinanzasgridItemModel model =
                    pantallaReporteFinanzasModelObj
                            ?.reportefinanzasgridItemList[index] ??
                        ReportefinanzasgridItemModel();
                return ReportefinanzasgridItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNoviembreRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 5.h,
          right: 18.h,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 27.v,
                bottom: 30.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "lbl_noviembre".tr,
                    style: CustomTextStyles.bodySmallPrimaryContainer10_1,
                  ),
                  SizedBox(height: 22.v),
                  Text(
                    "lbl_septiembre".tr,
                    style: CustomTextStyles.bodySmallPrimaryContainer10_1,
                  ),
                  SizedBox(height: 22.v),
                  Text(
                    "lbl_julio".tr,
                    style: CustomTextStyles.bodySmallPrimaryContainer10_1,
                  ),
                  SizedBox(height: 23.v),
                  Text(
                    "lbl_mayo".tr,
                    style: CustomTextStyles.bodySmallPrimaryContainer10_1,
                  ),
                  SizedBox(height: 21.v),
                  Text(
                    "lbl_marzo".tr,
                    style: CustomTextStyles.bodySmallPrimaryContainer10_1,
                  ),
                  SizedBox(height: 23.v),
                  Text(
                    "lbl_enero".tr,
                    style: CustomTextStyles.bodySmallPrimaryContainer10_1,
                  ),
                ],
              ),
            ),
            Container(
              height: 243.v,
              width: 285.h,
              decoration: AppDecoration.outlinePrimaryContainer,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 232.h,
                      margin: EdgeInsets.only(
                        left: 29.h,
                        right: 24.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: 16.h),
                              child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 103.v),
                      child: SizedBox(
                        width: 284.h,
                        child: Divider(),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 104.v),
                      child: SizedBox(
                        width: 284.h,
                        child: Divider(),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 69.v),
                      child: SizedBox(
                        width: 284.h,
                        child: Divider(),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 34.v),
                      child: SizedBox(
                        width: 284.h,
                        child: Divider(),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 33.v),
                      child: SizedBox(
                        width: 284.h,
                        child: Divider(),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 68.v),
                      child: SizedBox(
                        width: 284.h,
                        child: Divider(),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector1,
                    height: 239.v,
                    width: 284.h,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGroup153CheckBox(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: BlocSelector<PantallaReporteFinanzasBloc,
          PantallaReporteFinanzasState, bool?>(
        selector: (state) => state.group153CheckBox,
        builder: (context, group153CheckBox) {
          return CustomCheckboxButton(
            alignment: Alignment.centerLeft,
            value: group153CheckBox,
            onChange: (value) {
              context
                  .read<PantallaReporteFinanzasBloc>()
                  .add(ChangeCheckBoxEvent(value: value));
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildGastosCheckBox(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: BlocSelector<PantallaReporteFinanzasBloc,
          PantallaReporteFinanzasState, bool?>(
        selector: (state) => state.gastosCheckBox,
        builder: (context, gastosCheckBox) {
          return CustomCheckboxButton(
            alignment: Alignment.centerRight,
            text: "lbl_gastos".tr,
            value: gastosCheckBox,
            padding: EdgeInsets.symmetric(vertical: 3.v),
            onChange: (value) {
              context
                  .read<PantallaReporteFinanzasBloc>()
                  .add(ChangeCheckBox1Event(value: value));
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildIngresosCheckBox(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 23.h),
        child: BlocSelector<PantallaReporteFinanzasBloc,
            PantallaReporteFinanzasState, bool?>(
          selector: (state) => state.ingresosCheckBox,
          builder: (context, ingresosCheckBox) {
            return CustomCheckboxButton(
              alignment: Alignment.centerLeft,
              text: "lbl_ingresos".tr,
              value: ingresosCheckBox,
              padding: EdgeInsets.symmetric(vertical: 3.v),
              onChange: (value) {
                context
                    .read<PantallaReporteFinanzasBloc>()
                    .add(ChangeCheckBox2Event(value: value));
              },
            );
          },
        ),
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
