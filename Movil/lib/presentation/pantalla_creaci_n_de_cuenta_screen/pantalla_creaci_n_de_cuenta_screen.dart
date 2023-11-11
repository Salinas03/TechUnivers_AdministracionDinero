import 'bloc/pantalla_creaci_n_de_cuenta_bloc.dart';
import 'models/pantalla_creaci_n_de_cuenta_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:financia/widgets/custom_checkbox_button.dart';
import 'package:financia/widgets/custom_elevated_button.dart';
import 'package:financia/widgets/custom_outlined_button.dart';
import 'package:financia/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PantallaCreaciNDeCuentaScreen extends StatelessWidget {
  const PantallaCreaciNDeCuentaScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaCreaciNDeCuentaBloc>(
        create: (context) => PantallaCreaciNDeCuentaBloc(
            PantallaCreaciNDeCuentaState(
                pantallaCreaciNDeCuentaModelObj:
                    PantallaCreaciNDeCuentaModel()))
          ..add(PantallaCreaciNDeCuentaInitialEvent()),
        child: PantallaCreaciNDeCuentaScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 54.v),
                child: Column(children: [
                  SizedBox(height: 6.v),
                  _buildUserInfo(context),
                  SizedBox(height: 28.v),
                  _buildUserLastName(context),
                  SizedBox(height: 28.v),
                  _buildUserAge(context),
                  SizedBox(height: 28.v),
                  _buildUserEmail(context),
                  SizedBox(height: 28.v),
                  _buildUserPhone(context),
                  SizedBox(height: 28.v),
                  _buildUserPassword(context),
                  SizedBox(height: 28.v),
                  Container(
                      width: 285.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.h, vertical: 3.v),
                      decoration: AppDecoration.fillBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5),
                      child: Text("msg_confirmar_contrase_a".tr,
                          style: CustomTextStyles.bodySmallPrimaryContainer_1)),
                  SizedBox(height: 28.v),
                  _buildUploadFileButton(context),
                  SizedBox(height: 7.v),
                  Text("lbl_foto_de_perfil".tr,
                      style: CustomTextStyles.bodySmallPrimaryContainer10_1),
                  SizedBox(height: 35.v),
                  _buildAcceptTermsCheckbox(context)
                ])),
            bottomNavigationBar: _buildCreateAccountButton(context)));
  }

  /// Section Widget
  Widget _buildUserInfo(BuildContext context) {
    return BlocSelector<PantallaCreaciNDeCuentaBloc,
            PantallaCreaciNDeCuentaState, TextEditingController?>(
        selector: (state) => state.userInfoController,
        builder: (context, userInfoController) {
          return CustomTextFormField(
              controller: userInfoController, hintText: "lbl_nombre".tr);
        });
  }

  /// Section Widget
  Widget _buildUserLastName(BuildContext context) {
    return BlocSelector<PantallaCreaciNDeCuentaBloc,
            PantallaCreaciNDeCuentaState, TextEditingController?>(
        selector: (state) => state.userLastNameController,
        builder: (context, userLastNameController) {
          return CustomTextFormField(
              controller: userLastNameController, hintText: "lbl_apellidos".tr);
        });
  }

  /// Section Widget
  Widget _buildUserAge(BuildContext context) {
    return BlocSelector<PantallaCreaciNDeCuentaBloc,
            PantallaCreaciNDeCuentaState, TextEditingController?>(
        selector: (state) => state.userAgeController,
        builder: (context, userAgeController) {
          return CustomTextFormField(
              controller: userAgeController, hintText: "lbl_edad".tr);
        });
  }

  /// Section Widget
  Widget _buildUserEmail(BuildContext context) {
    return BlocSelector<PantallaCreaciNDeCuentaBloc,
            PantallaCreaciNDeCuentaState, TextEditingController?>(
        selector: (state) => state.userEmailController,
        builder: (context, userEmailController) {
          return CustomTextFormField(
              controller: userEmailController, hintText: "lbl_correo".tr);
        });
  }

  /// Section Widget
  Widget _buildUserPhone(BuildContext context) {
    return BlocSelector<PantallaCreaciNDeCuentaBloc,
            PantallaCreaciNDeCuentaState, TextEditingController?>(
        selector: (state) => state.userPhoneController,
        builder: (context, userPhoneController) {
          return CustomTextFormField(
              controller: userPhoneController, hintText: "lbl_tel_fono".tr);
        });
  }

  /// Section Widget
  Widget _buildUserPassword(BuildContext context) {
    return BlocSelector<PantallaCreaciNDeCuentaBloc,
            PantallaCreaciNDeCuentaState, TextEditingController?>(
        selector: (state) => state.userPasswordController,
        builder: (context, userPasswordController) {
          return CustomTextFormField(
              controller: userPasswordController,
              hintText: "lbl_contrase_a".tr,
              textInputAction: TextInputAction.done);
        });
  }

  /// Section Widget
  Widget _buildUploadFileButton(BuildContext context) {
    return CustomElevatedButton(
        height: 20.v,
        width: 100.h,
        text: "lbl_subir_archivo".tr,
        buttonStyle: CustomButtonStyles.fillBlueGray,
        buttonTextStyle: CustomTextStyles.bodySmallPrimaryContainer10);
  }

  /// Section Widget
  Widget _buildAcceptTermsCheckbox(BuildContext context) {
    return BlocSelector<PantallaCreaciNDeCuentaBloc,
            PantallaCreaciNDeCuentaState, bool?>(
        selector: (state) => state.acceptTermsCheckbox,
        builder: (context, acceptTermsCheckbox) {
          return CustomCheckboxButton(
              text: "msg_acepta_los_t_rminos".tr,
              value: acceptTermsCheckbox,
              padding: EdgeInsets.symmetric(vertical: 3.v),
              onChange: (value) {
                context
                    .read<PantallaCreaciNDeCuentaBloc>()
                    .add(ChangeCheckBoxEvent(value: value));
              });
        });
  }

  /// Section Widget
  Widget _buildCreateAccountButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 30.v,
        width: 200.h,
        text: "lbl_generar_cuenta".tr,
        margin: EdgeInsets.only(left: 80.h, right: 80.h, bottom: 51.v),
        buttonStyle: CustomButtonStyles.outlineOnPrimaryTL153,
        onPressed: () {
          onTapCreateAccountButton(context);
        });
  }

  /// Navigates to the pantallaBienvenidaScreen when the action is triggered.
  onTapCreateAccountButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pantallaBienvenidaScreen,
    );
  }
}
