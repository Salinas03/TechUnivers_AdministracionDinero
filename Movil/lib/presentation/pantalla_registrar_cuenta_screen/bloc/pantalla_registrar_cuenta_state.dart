// ignore_for_file: must_be_immutable

part of 'pantalla_registrar_cuenta_bloc.dart';

/// Represents the state of PantallaRegistrarCuenta in the application.
class PantallaRegistrarCuentaState extends Equatable {
  PantallaRegistrarCuentaState({this.pantallaRegistrarCuentaModelObj});

  PantallaRegistrarCuentaModel? pantallaRegistrarCuentaModelObj;

  @override
  List<Object?> get props => [
        pantallaRegistrarCuentaModelObj,
      ];
  PantallaRegistrarCuentaState copyWith(
      {PantallaRegistrarCuentaModel? pantallaRegistrarCuentaModelObj}) {
    return PantallaRegistrarCuentaState(
      pantallaRegistrarCuentaModelObj: pantallaRegistrarCuentaModelObj ??
          this.pantallaRegistrarCuentaModelObj,
    );
  }
}
