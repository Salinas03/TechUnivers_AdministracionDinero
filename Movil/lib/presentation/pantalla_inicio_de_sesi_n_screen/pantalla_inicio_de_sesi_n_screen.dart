import 'bloc/pantalla_inicio_de_sesi_n_bloc.dart';
import 'models/pantalla_inicio_de_sesi_n_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:financia/core/utils/validation_functions.dart';
import 'package:financia/widgets/custom_outlined_button.dart';
import 'package:financia/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PantallaInicioDeSesiNScreen extends StatelessWidget {
  PantallaInicioDeSesiNScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaInicioDeSesiNBloc>(
        create: (context) => PantallaInicioDeSesiNBloc(
            PantallaInicioDeSesiNState(
                pantallaInicioDeSesiNModelObj: PantallaInicioDeSesiNModel()))
          ..add(PantallaInicioDeSesiNInitialEvent()),
        child: PantallaInicioDeSesiNScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 7.h, vertical: 13.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgDiseOSinTTulo161x346,
                          height: 161.v,
                          width: 346.h),
                      SizedBox(height: 39.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage4,
                                height: 27.v,
                                width: 29.h),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h, top: 2.v),
                                child: BlocSelector<
                                        PantallaInicioDeSesiNBloc,
                                        PantallaInicioDeSesiNState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.userNameController,
                                    builder: (context, userNameController) {
                                      return CustomTextFormField(
                                          width: 200.h,
                                          controller: userNameController,
                                          hintText: "lbl_username".tr,
                                          validator: (value) {
                                            if (!isText(value)) {
                                              return "err_msg_please_enter_valid_text"
                                                  .tr;
                                            }
                                            return null;
                                          },
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 7.h),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .underLineOnPrimary,
                                          filled: false);
                                    }))
                          ]),
                      SizedBox(height: 71.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage5,
                                height: 22.v,
                                width: 29.h,
                                margin: EdgeInsets.only(bottom: 1.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: BlocSelector<
                                        PantallaInicioDeSesiNBloc,
                                        PantallaInicioDeSesiNState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.passwordController,
                                    builder: (context, passwordController) {
                                      return CustomTextFormField(
                                          width: 200.h,
                                          controller: passwordController,
                                          hintText: "lbl_password".tr,
                                          textInputAction: TextInputAction.done,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          validator: (value) {
                                            if (value == null ||
                                                (!isValidPassword(value,
                                                    isRequired: true))) {
                                              return "err_msg_please_enter_valid_password"
                                                  .tr;
                                            }
                                            return null;
                                          },
                                          obscureText: true,
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 7.h),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .underLineOnPrimary,
                                          filled: false);
                                    }))
                          ]),
                      SizedBox(height: 55.v),
                      CustomOutlinedButton(
                          height: 25.v,
                          width: 150.h,
                          text: "lbl_entrar".tr,
                          buttonStyle: CustomButtonStyles.outlineOnPrimary,
                          buttonTextStyle:
                              CustomTextStyles.bodySmallPrimaryContainer_1,
                          onPressed: () {
                            onTapEntrar(context);
                          }),
                      SizedBox(height: 98.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 62.h),
                              child: Row(children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 5.v, bottom: 4.v),
                                    child: Text("msg_no_tienes_cuenta".tr,
                                        style: CustomTextStyles
                                            .bodySmallPrimaryContainer10_1)),
                                Padding(
                                    padding: EdgeInsets.only(left: 26.h),
                                    child: SizedBox(
                                        height: 22.v,
                                        child: VerticalDivider(
                                            width: 2.h,
                                            thickness: 2.v,
                                            color: theme.colorScheme.onPrimary
                                                .withOpacity(1)))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtRegistrate(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 24.h, top: 5.v, bottom: 4.v),
                                        child: Text("lbl_registrate".tr,
                                            style: CustomTextStyles
                                                .bodySmallGreenA700)))
                              ]))),
                      SizedBox(height: 72.v),
                      Text("msg_t_rminos_y_condiciones".tr,
                          style: CustomTextStyles.bodySmallPrimaryContainer8),
                      SizedBox(height: 9.v)
                    ])))));
  }

  /// Navigates to the pantallaPrincipalScreen when the action is triggered.
  onTapEntrar(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pantallaPrincipalScreen,
    );
  }

  /// Navigates to the pantallaRegistrarCuentaScreen when the action is triggered.
  onTapTxtRegistrate(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pantallaRegistrarCuentaScreen,
    );
  }
}
