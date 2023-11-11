import 'package:flutter/material.dart';
import 'package:financia/presentation/pantalla_splash_screen/pantalla_splash_screen.dart';
import 'package:financia/presentation/pantalla_gr_ficas_tab_container_screen/pantalla_gr_ficas_tab_container_screen.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_crear_container_screen/pantalla_plan_de_ahorro_crear_container_screen.dart';
import 'package:financia/presentation/pantalla_reporte_finanzas_screen/pantalla_reporte_finanzas_screen.dart';
import 'package:financia/presentation/pantalla_planes_de_ahorro_totales_screen/pantalla_planes_de_ahorro_totales_screen.dart';
import 'package:financia/presentation/pantalla_metas_screen/pantalla_metas_screen.dart';
import 'package:financia/presentation/pantalla_terminos_y_condiciones_screen/pantalla_terminos_y_condiciones_screen.dart';
import 'package:financia/presentation/pantalla_principal_screen/pantalla_principal_screen.dart';
import 'package:financia/presentation/pantalla_inicio_de_sesi_n_screen/pantalla_inicio_de_sesi_n_screen.dart';
import 'package:financia/presentation/pantalla_registrar_cuenta_screen/pantalla_registrar_cuenta_screen.dart';
import 'package:financia/presentation/pantalla_creaci_n_de_cuenta_screen/pantalla_creaci_n_de_cuenta_screen.dart';
import 'package:financia/presentation/pantalla_quienes_somos_screen/pantalla_quienes_somos_screen.dart';
import 'package:financia/presentation/pantalla_aviso_de_privacidad_screen/pantalla_aviso_de_privacidad_screen.dart';
import 'package:financia/presentation/pantalla_acerca_de_la_aplicaci_n_screen/pantalla_acerca_de_la_aplicaci_n_screen.dart';
import 'package:financia/presentation/pantalla_bienvenida_screen/pantalla_bienvenida_screen.dart';
import 'package:financia/presentation/pantalla_sueldo_fijo_tab_container_screen/pantalla_sueldo_fijo_tab_container_screen.dart';
import 'package:financia/presentation/pantalla_sueldo_variable_tab_container_screen/pantalla_sueldo_variable_tab_container_screen.dart';
import 'package:financia/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String pantallaSplashScreen = '/pantalla_splash_screen';

  static const String pantallaGrFicasPage = '/pantalla_gr_ficas_page';

  static const String pantallaGrFicasTabContainerScreen =
      '/pantalla_gr_ficas_tab_container_screen';

  static const String pantallaPlanDeAhorroCrearPage =
      '/pantalla_plan_de_ahorro_crear_page';

  static const String pantallaPlanDeAhorroCrearContainerScreen =
      '/pantalla_plan_de_ahorro_crear_container_screen';

  static const String pantallaReporteFinanzasScreen =
      '/pantalla_reporte_finanzas_screen';

  static const String pantallaPlanesDeAhorroTotalesScreen =
      '/pantalla_planes_de_ahorro_totales_screen';

  static const String pantallaMetasScreen = '/pantalla_metas_screen';

  static const String pantallaTerminosYCondicionesScreen =
      '/pantalla_terminos_y_condiciones_screen';

  static const String pantallaPrincipalScreen = '/pantalla_principal_screen';

  static const String pantallaInicioDeSesiNScreen =
      '/pantalla_inicio_de_sesi_n_screen';

  static const String pantallaRegistrarCuentaScreen =
      '/pantalla_registrar_cuenta_screen';

  static const String pantallaCreaciNDeCuentaScreen =
      '/pantalla_creaci_n_de_cuenta_screen';

  static const String pantallaQuienesSomosScreen =
      '/pantalla_quienes_somos_screen';

  static const String pantallaAvisoDePrivacidadScreen =
      '/pantalla_aviso_de_privacidad_screen';

  static const String pantallaAcercaDeLaAplicaciNScreen =
      '/pantalla_acerca_de_la_aplicaci_n_screen';

  static const String pantallaBienvenidaScreen = '/pantalla_bienvenida_screen';

  static const String pantallaSueldoFijoPage = '/pantalla_sueldo_fijo_page';

  static const String pantallaSueldoFijoTabContainerScreen =
      '/pantalla_sueldo_fijo_tab_container_screen';

  static const String pantallaSueldoVariablePage =
      '/pantalla_sueldo_variable_page';

  static const String pantallaSueldoVariableTabContainerScreen =
      '/pantalla_sueldo_variable_tab_container_screen';

  static const String pantallaPlanDeAhorroModificaciNPage =
      '/pantalla_plan_de_ahorro_modificaci_n_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        pantallaSplashScreen: PantallaSplashScreen.builder,
        pantallaGrFicasTabContainerScreen:
            PantallaGrFicasTabContainerScreen.builder,
        pantallaPlanDeAhorroCrearContainerScreen:
            PantallaPlanDeAhorroCrearContainerScreen.builder,
        pantallaReporteFinanzasScreen: PantallaReporteFinanzasScreen.builder,
        pantallaPlanesDeAhorroTotalesScreen:
            PantallaPlanesDeAhorroTotalesScreen.builder,
        pantallaMetasScreen: PantallaMetasScreen.builder,
        pantallaTerminosYCondicionesScreen:
            PantallaTerminosYCondicionesScreen.builder,
        pantallaPrincipalScreen: PantallaPrincipalScreen.builder,
        pantallaInicioDeSesiNScreen: PantallaInicioDeSesiNScreen.builder,
        pantallaRegistrarCuentaScreen: PantallaRegistrarCuentaScreen.builder,
        pantallaCreaciNDeCuentaScreen: PantallaCreaciNDeCuentaScreen.builder,
        pantallaQuienesSomosScreen: PantallaQuienesSomosScreen.builder,
        pantallaAvisoDePrivacidadScreen:
            PantallaAvisoDePrivacidadScreen.builder,
        pantallaAcercaDeLaAplicaciNScreen:
            PantallaAcercaDeLaAplicaciNScreen.builder,
        pantallaBienvenidaScreen: PantallaBienvenidaScreen.builder,
        pantallaSueldoFijoTabContainerScreen:
            PantallaSueldoFijoTabContainerScreen.builder,
        pantallaSueldoVariableTabContainerScreen:
            PantallaSueldoVariableTabContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: PantallaSplashScreen.builder
      };
}
