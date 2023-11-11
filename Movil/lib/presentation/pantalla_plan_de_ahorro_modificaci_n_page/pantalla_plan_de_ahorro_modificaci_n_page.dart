import '../pantalla_plan_de_ahorro_modificaci_n_page/widgets/plandeahorromodificacion_item_widget.dart';
import 'bloc/pantalla_plan_de_ahorro_modificaci_n_bloc.dart';
import 'models/pantalla_plan_de_ahorro_modificaci_n_model.dart';
import 'models/plandeahorromodificacion_item_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:financia/widgets/custom_elevated_button.dart';
import 'package:financia/widgets/custom_outlined_button.dart';
import 'package:financia/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PantallaPlanDeAhorroModificaciNPage extends StatelessWidget {
  const PantallaPlanDeAhorroModificaciNPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaPlanDeAhorroModificaciNBloc>(
      create: (context) => PantallaPlanDeAhorroModificaciNBloc(
          PantallaPlanDeAhorroModificaciNState(
        pantallaPlanDeAhorroModificaciNModelObj:
            PantallaPlanDeAhorroModificaciNModel(),
      ))
        ..add(PantallaPlanDeAhorroModificaciNInitialEvent()),
      child: PantallaPlanDeAhorroModificaciNPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnError,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  CustomElevatedButton(
                    text: "lbl_plan_de_ahorro".tr,
                  ),
                  SizedBox(height: 46.v),
                  _buildPlanDeAhorroModificacion(context),
                  SizedBox(height: 74.v),
                  Text(
                    "msg_cuanto_ahorraste".tr,
                    style: CustomTextStyles.bodySmallPrimaryContainer,
                  ),
                  SizedBox(height: 6.v),
                  BlocSelector<
                      PantallaPlanDeAhorroModificaciNBloc,
                      PantallaPlanDeAhorroModificaciNState,
                      TextEditingController?>(
                    selector: (state) => state.priceController,
                    builder: (context, priceController) {
                      return CustomTextFormField(
                        width: 151.h,
                        controller: priceController,
                        hintText: "lbl_00_00".tr,
                        textInputAction: TextInputAction.done,
                      );
                    },
                  ),
                  SizedBox(height: 59.v),
                  _buildLineThirteen(context),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Divider(
                      color: theme.colorScheme.primaryContainer.withOpacity(1),
                      indent: 63.h,
                      endIndent: 13.h,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 77.h,
                        right: 3.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "lbl_100_00".tr,
                            style: CustomTextStyles.bodySmallPrimaryContainer8,
                          ),
                          Spacer(),
                          Text(
                            "lbl_1_000_00".tr,
                            style: CustomTextStyles.bodySmallPrimaryContainer8,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 27.h),
                            child: Text(
                              "lbl_10_000_00".tr,
                              style:
                                  CustomTextStyles.bodySmallPrimaryContainer8,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 26.h),
                            child: Text(
                              "lbl_50_000_00".tr,
                              style:
                                  CustomTextStyles.bodySmallPrimaryContainer8,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 11.h),
                            child: Text(
                              "lbl_50_000".tr,
                              style:
                                  CustomTextStyles.bodySmallPrimaryContainer8,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 57.v),
                  CustomOutlinedButton(
                    height: 40.v,
                    width: 150.h,
                    text: "lbl_modificar".tr,
                    buttonStyle: CustomButtonStyles.outlineOnPrimary,
                    buttonTextStyle: theme.textTheme.bodyMedium!,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlanDeAhorroModificacion(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: BlocSelector<
          PantallaPlanDeAhorroModificaciNBloc,
          PantallaPlanDeAhorroModificaciNState,
          PantallaPlanDeAhorroModificaciNModel?>(
        selector: (state) => state.pantallaPlanDeAhorroModificaciNModelObj,
        builder: (context, pantallaPlanDeAhorroModificaciNModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 40.v,
              );
            },
            itemCount: pantallaPlanDeAhorroModificaciNModelObj
                    ?.plandeahorromodificacionItemList.length ??
                0,
            itemBuilder: (context, index) {
              PlandeahorromodificacionItemModel model =
                  pantallaPlanDeAhorroModificaciNModelObj
                          ?.plandeahorromodificacionItemList[index] ??
                      PlandeahorromodificacionItemModel();
              return PlandeahorromodificacionItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLineThirteen(BuildContext context) {
    return SizedBox(
      height: 243.v,
      width: 335.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 243.v,
              width: 285.h,
              decoration: AppDecoration.outlinePrimaryContainer,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 30.h,
                        right: 23.h,
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
                    imagePath: ImageConstant.imgVector2,
                    height: 239.v,
                    width: 283.h,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 25.h,
                bottom: 30.v,
              ),
              child: Text(
                "lbl_enero".tr,
                style: CustomTextStyles.bodySmallPrimaryContainer10_1,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 22.h,
                bottom: 65.v,
              ),
              child: Text(
                "lbl_marzo".tr,
                style: CustomTextStyles.bodySmallPrimaryContainer10_1,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 26.h,
                bottom: 99.v,
              ),
              child: Text(
                "lbl_mayo".tr,
                style: CustomTextStyles.bodySmallPrimaryContainer10_1,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 29.h,
                top: 96.v,
              ),
              child: Text(
                "lbl_julio".tr,
                style: CustomTextStyles.bodySmallPrimaryContainer10_1,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 62.v),
              child: Text(
                "lbl_septiembre".tr,
                style: CustomTextStyles.bodySmallPrimaryContainer10_1,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 2.h,
                top: 27.v,
              ),
              child: Text(
                "lbl_noviembre".tr,
                style: CustomTextStyles.bodySmallPrimaryContainer10_1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
