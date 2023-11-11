// ignore_for_file: must_be_immutable

part of 'pantalla_aviso_de_privacidad_bloc.dart';

/// Represents the state of PantallaAvisoDePrivacidad in the application.
class PantallaAvisoDePrivacidadState extends Equatable {
  PantallaAvisoDePrivacidadState({this.pantallaAvisoDePrivacidadModelObj});

  PantallaAvisoDePrivacidadModel? pantallaAvisoDePrivacidadModelObj;

  @override
  List<Object?> get props => [
        pantallaAvisoDePrivacidadModelObj,
      ];
  PantallaAvisoDePrivacidadState copyWith(
      {PantallaAvisoDePrivacidadModel? pantallaAvisoDePrivacidadModelObj}) {
    return PantallaAvisoDePrivacidadState(
      pantallaAvisoDePrivacidadModelObj: pantallaAvisoDePrivacidadModelObj ??
          this.pantallaAvisoDePrivacidadModelObj,
    );
  }
}
