import 'bloc/pantalla_registrar_cuenta_bloc.dart';
import 'models/pantalla_registrar_cuenta_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:financia/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class PantallaRegistrarCuentaScreen extends StatelessWidget {
  const PantallaRegistrarCuentaScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaRegistrarCuentaBloc>(
        create: (context) => PantallaRegistrarCuentaBloc(
            PantallaRegistrarCuentaState(
                pantallaRegistrarCuentaModelObj:
                    PantallaRegistrarCuentaModel()))
          ..add(PantallaRegistrarCuentaInitialEvent()),
        child: PantallaRegistrarCuentaScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<PantallaRegistrarCuentaBloc,
        PantallaRegistrarCuentaState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 47.h, vertical: 111.v),
                  child: Column(children: [
                    CustomOutlinedButton(
                        height: 50.v,
                        text: "lbl_generar_cuenta".tr,
                        margin: EdgeInsets.symmetric(horizontal: 33.h),
                        buttonStyle: CustomButtonStyles.outlineOnPrimaryTL20,
                        onPressed: () {
                          onTapGenerarCuenta(context);
                        }),
                    Spacer(),
                    Text("msg_o_registrarse_con".tr,
                        style: theme.textTheme.bodyMedium),
                    SizedBox(height: 88.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgImage6,
                              height: 56.v,
                              width: 50.h,
                              radius: BorderRadius.circular(5.h)),
                          CustomImageView(
                              imagePath: ImageConstant.imgImage753x50,
                              height: 53.v,
                              width: 50.h,
                              radius: BorderRadius.circular(5.h),
                              margin: EdgeInsets.only(bottom: 3.v)),
                          CustomImageView(
                              imagePath: ImageConstant.imgImage8,
                              height: 47.v,
                              width: 50.h,
                              radius: BorderRadius.circular(5.h),
                              margin: EdgeInsets.only(top: 6.v, bottom: 3.v))
                        ]),
                    SizedBox(height: 53.v)
                  ]))));
    });
  }

  /// Navigates to the pantallaCreaciNDeCuentaScreen when the action is triggered.
  onTapGenerarCuenta(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pantallaCreaciNDeCuentaScreen,
    );
  }
}
