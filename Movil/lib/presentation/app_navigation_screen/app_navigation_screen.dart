import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Pantalla - Splash".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.pantallaSplashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Pantalla - Gráficas - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.pantallaGrFicasTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Pantalla - Plan de ahorro crear - Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .pantallaPlanDeAhorroCrearContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Pantalla - Reporte Finanzas".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.pantallaReporteFinanzasScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Pantalla - Planes de ahorro totales".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .pantallaPlanesDeAhorroTotalesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Pantalla - Metas".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.pantallaMetasScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Pantalla - Terminos y condiciones".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.pantallaTerminosYCondicionesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Pantalla - Principal".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.pantallaPrincipalScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Pantalla - Inicio de sesión".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.pantallaInicioDeSesiNScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Pantalla - Registrar cuenta".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.pantallaRegistrarCuentaScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Pantalla - Creación de cuenta".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.pantallaCreaciNDeCuentaScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Pantalla - ¿Quienes somos?".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.pantallaQuienesSomosScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Pantalla - Aviso de privacidad".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.pantallaAvisoDePrivacidadScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Pantalla - Acerca de la aplicación".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.pantallaAcercaDeLaAplicaciNScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Pantalla - Bienvenida".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.pantallaBienvenidaScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Pantalla - Sueldo fijo - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .pantallaSueldoFijoTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Pantalla - Sueldo variable - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .pantallaSueldoVariableTabContainerScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
