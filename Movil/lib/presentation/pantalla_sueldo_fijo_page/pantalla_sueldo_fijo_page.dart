import 'bloc/pantalla_sueldo_fijo_bloc.dart';
import 'models/pantalla_sueldo_fijo_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:financia/widgets/custom_checkbox_button.dart';
import 'package:financia/widgets/custom_outlined_button.dart';
import 'package:financia/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PantallaSueldoFijoPage extends StatefulWidget {
  const PantallaSueldoFijoPage({Key? key}) : super(key: key);

  @override
  PantallaSueldoFijoPageState createState() => PantallaSueldoFijoPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaSueldoFijoBloc>(
        create: (context) => PantallaSueldoFijoBloc(PantallaSueldoFijoState(
            pantallaSueldoFijoModelObj: PantallaSueldoFijoModel()))
          ..add(PantallaSueldoFijoInitialEvent()),
        child: PantallaSueldoFijoPage());
  }
}

class PantallaSueldoFijoPageState extends State<PantallaSueldoFijoPage>
    with AutomaticKeepAliveClientMixin<PantallaSueldoFijoPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 22.v),
                  Padding(
                      padding: EdgeInsets.only(left: 18.h, right: 23.h),
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 29.h),
                                child: Text("lbl_cu_nto".tr,
                                    style: theme.textTheme.bodyMedium))),
                        SizedBox(height: 25.v),
                        Container(
                            width: 285.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.h, vertical: 3.v),
                            decoration: AppDecoration.fillBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child: Text("lbl".tr,
                                style: CustomTextStyles
                                    .bodySmallPrimaryContainer_1)),
                        SizedBox(height: 45.v),
                        Container(
                            width: 273.h,
                            margin: EdgeInsets.only(left: 26.h, right: 20.h),
                            decoration: AppDecoration.outlinePrimary,
                            child: Text("lbl_gastos2".tr,
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyLarge18)),
                        SizedBox(height: 1.v),
                        Text("msg_considera_los_gastos".tr,
                            style: theme.textTheme.bodyMedium),
                        SizedBox(height: 40.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: 252.h,
                                margin:
                                    EdgeInsets.only(left: 21.h, right: 46.h),
                                child: Text("msg_cu_nto_pagas_en".tr,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodyMedium))),
                        SizedBox(height: 15.v),
                        SizedBox(
                            height: 28.v,
                            width: 285.h,
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                      width: 285.h,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 14.h, vertical: 3.v),
                                      decoration: AppDecoration.fillBlueGray
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder5),
                                      child: Text("lbl".tr,
                                          style: CustomTextStyles
                                              .bodySmallPrimaryContainer_1))),
                              _buildConsideraLosGastos(context)
                            ])),
                        SizedBox(height: 53.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 21.h),
                                child: Text("msg_cu_nto_gastas_en".tr,
                                    style: theme.textTheme.bodyMedium))),
                        SizedBox(height: 10.v),
                        SizedBox(
                            height: 28.v,
                            width: 285.h,
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 64.h),
                                      child: Text("lbl_si".tr,
                                          style: theme.textTheme.bodySmall))),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 2.v, right: 38.h),
                                      child: Text("lbl_no".tr,
                                          style: theme.textTheme.bodySmall))),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 64.h, top: 8.v),
                                      child: Text("lbl_si".tr,
                                          style: theme.textTheme.bodySmall))),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                      width: 285.h,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 14.h, vertical: 3.v),
                                      decoration: AppDecoration.fillBlueGray
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder5),
                                      child: Text("lbl".tr,
                                          style: CustomTextStyles
                                              .bodySmallPrimaryContainer_1)))
                            ])),
                        SizedBox(height: 38.v),
                        Text("msg_tienes_otros_gastos".tr,
                            style: theme.textTheme.bodyMedium),
                        SizedBox(height: 38.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                                    padding: EdgeInsets.only(
                                                        top: 5.v),
                                                    child: Text("lbl_si".tr,
                                                        style: theme.textTheme
                                                            .bodySmall))),
                                            _buildSiButton(context)
                                          ])),
                                  _buildNoButton(context)
                                ])),
                        SizedBox(height: 45.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: EdgeInsets.only(right: 18.h),
                                child: Text("lbl_cu_nto".tr,
                                    style: CustomTextStyles.bodyMedium13))),
                        SizedBox(height: 3.v),
                        _buildSpotifyRow(context),
                        SizedBox(height: 3.v),
                        _buildNetflixRow(context),
                        SizedBox(height: 1.v),
                        _buildDisneyRow(context),
                        SizedBox(height: 3.v),
                        _buildHboRow(context),
                        SizedBox(height: 4.v),
                        _buildAmazon(context),
                        SizedBox(height: 6.v),
                        _buildOtro(context),
                        SizedBox(height: 16.v),
                        Container(
                            width: 308.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 4.h, vertical: 1.v),
                            decoration: AppDecoration.fillBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child: Text("msg_especifica_gas".tr,
                                style: CustomTextStyles
                                    .bodySmallPrimaryContainer_1)),
                        SizedBox(height: 27.v),
                        SizedBox(
                            height: 28.v,
                            width: 101.h,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 39.h, top: 5.v),
                                      child: Text("lbl_si".tr,
                                          style: theme.textTheme.bodySmall))),
                              _buildTerminarButton(context)
                            ]))
                      ]))
                ])))));
  }

  /// Section Widget
  Widget _buildConsideraLosGastos(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 38.h),
        child: BlocSelector<PantallaSueldoFijoBloc, PantallaSueldoFijoState,
                TextEditingController?>(
            selector: (state) => state.consideraLosGastosController,
            builder: (context, consideraLosGastosController) {
              return CustomTextFormField(
                  width: 182.h,
                  controller: consideraLosGastosController,
                  hintText: "lbl_si".tr,
                  alignment: Alignment.topRight);
            }));
  }

  /// Section Widget
  Widget _buildSiButton(BuildContext context) {
    return CustomOutlinedButton(
        width: 101.h, text: "lbl_si".tr, alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildNoButton(BuildContext context) {
    return CustomOutlinedButton(width: 101.h, text: "lbl_no".tr);
  }

  /// Section Widget
  Widget _buildSpotifyRow(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 8.v),
              child: BlocSelector<PantallaSueldoFijoBloc,
                      PantallaSueldoFijoState, bool?>(
                  selector: (state) => state.spotify,
                  builder: (context, spotify) {
                    return CustomCheckboxButton(
                        text: "lbl_spotify".tr,
                        value: spotify,
                        padding: EdgeInsets.symmetric(vertical: 3.v),
                        onChange: (value) {
                          context
                              .read<PantallaSueldoFijoBloc>()
                              .add(ChangeCheckBoxEvent(value: value));
                        });
                  })),
          Container(
              height: 24.v,
              width: 90.h,
              margin: EdgeInsets.only(bottom: 4.v),
              child: Stack(alignment: Alignment.topRight, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text("lbl_si".tr,
                            style: theme.textTheme.bodySmall))),
                Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text("lbl_no".tr,
                            style: theme.textTheme.bodySmall))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text("lbl_si".tr,
                            style: theme.textTheme.bodySmall))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        width: 89.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.h, vertical: 1.v),
                        decoration: AppDecoration.fillBlueGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5),
                        child: Text("lbl".tr,
                            style:
                                CustomTextStyles.bodySmallPrimaryContainer_1)))
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildNetflixRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 9.v),
                  child: BlocSelector<PantallaSueldoFijoBloc,
                          PantallaSueldoFijoState, bool?>(
                      selector: (state) => state.netflix,
                      builder: (context, netflix) {
                        return CustomCheckboxButton(
                            text: "lbl_netflix".tr,
                            value: netflix,
                            padding: EdgeInsets.symmetric(vertical: 3.v),
                            onChange: (value) {
                              context
                                  .read<PantallaSueldoFijoBloc>()
                                  .add(ChangeCheckBox1Event(value: value));
                            });
                      })),
              Container(
                  width: 89.h,
                  margin: EdgeInsets.only(bottom: 10.v),
                  padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 1.v),
                  decoration: AppDecoration.fillBlueGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                  child: Text("lbl".tr,
                      style: CustomTextStyles.bodySmallPrimaryContainer_1))
            ]));
  }

  /// Section Widget
  Widget _buildDisneyRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 9.v),
                  child: BlocSelector<PantallaSueldoFijoBloc,
                          PantallaSueldoFijoState, bool?>(
                      selector: (state) => state.disney,
                      builder: (context, disney) {
                        return CustomCheckboxButton(
                            text: "lbl_disney".tr,
                            value: disney,
                            padding: EdgeInsets.symmetric(vertical: 3.v),
                            onChange: (value) {
                              context
                                  .read<PantallaSueldoFijoBloc>()
                                  .add(ChangeCheckBox2Event(value: value));
                            });
                      })),
              Container(
                  width: 89.h,
                  margin: EdgeInsets.only(bottom: 10.v),
                  padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 1.v),
                  decoration: AppDecoration.fillBlueGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                  child: Text("lbl".tr,
                      style: CustomTextStyles.bodySmallPrimaryContainer_1))
            ]));
  }

  /// Section Widget
  Widget _buildHboRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 6.v),
                  child: BlocSelector<PantallaSueldoFijoBloc,
                          PantallaSueldoFijoState, bool?>(
                      selector: (state) => state.hbo,
                      builder: (context, hbo) {
                        return CustomCheckboxButton(
                            text: "lbl_hbo".tr,
                            value: hbo,
                            padding: EdgeInsets.symmetric(vertical: 3.v),
                            onChange: (value) {
                              context
                                  .read<PantallaSueldoFijoBloc>()
                                  .add(ChangeCheckBox3Event(value: value));
                            });
                      })),
              Container(
                  width: 89.h,
                  margin: EdgeInsets.only(bottom: 7.v),
                  padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 1.v),
                  decoration: AppDecoration.fillBlueGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                  child: Text("lbl".tr,
                      style: CustomTextStyles.bodySmallPrimaryContainer_1))
            ]));
  }

  /// Section Widget
  Widget _buildAmazonEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 7.v),
        child: BlocSelector<PantallaSueldoFijoBloc, PantallaSueldoFijoState,
                TextEditingController?>(
            selector: (state) => state.amazonEditTextController,
            builder: (context, amazonEditTextController) {
              return CustomTextFormField(
                  width: 89.h,
                  controller: amazonEditTextController,
                  hintText: "lbl".tr);
            }));
  }

  /// Section Widget
  Widget _buildAmazon(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 6.v),
                  child: BlocSelector<PantallaSueldoFijoBloc,
                          PantallaSueldoFijoState, bool?>(
                      selector: (state) => state.amazon,
                      builder: (context, amazon) {
                        return CustomCheckboxButton(
                            text: "lbl_amazon".tr,
                            value: amazon,
                            padding: EdgeInsets.symmetric(vertical: 3.v),
                            onChange: (value) {
                              context
                                  .read<PantallaSueldoFijoBloc>()
                                  .add(ChangeCheckBox4Event(value: value));
                            });
                      })),
              _buildAmazonEditText(context)
            ]));
  }

  /// Section Widget
  Widget _buildOtroEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 4.v),
        child: BlocSelector<PantallaSueldoFijoBloc, PantallaSueldoFijoState,
                TextEditingController?>(
            selector: (state) => state.otroEditTextController,
            builder: (context, otroEditTextController) {
              return CustomTextFormField(
                  width: 89.h,
                  controller: otroEditTextController,
                  hintText: "lbl".tr,
                  textInputAction: TextInputAction.done);
            }));
  }

  /// Section Widget
  Widget _buildOtro(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: BlocSelector<PantallaSueldoFijoBloc,
                      PantallaSueldoFijoState, bool?>(
                  selector: (state) => state.otro,
                  builder: (context, otro) {
                    return CustomCheckboxButton(
                        text: "lbl_otro".tr,
                        value: otro,
                        padding: EdgeInsets.symmetric(vertical: 3.v),
                        onChange: (value) {
                          context
                              .read<PantallaSueldoFijoBloc>()
                              .add(ChangeCheckBox5Event(value: value));
                        });
                  })),
          _buildOtroEditText(context)
        ]));
  }

  /// Section Widget
  Widget _buildTerminarButton(BuildContext context) {
    return CustomOutlinedButton(
        width: 101.h,
        text: "lbl_terminar".tr,
        onPressed: () {
          onTapTerminarButton(context);
        },
        alignment: Alignment.center);
  }

  /// Navigates to the pantallaPrincipalScreen when the action is triggered.
  onTapTerminarButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pantallaPrincipalScreen,
    );
  }
}
