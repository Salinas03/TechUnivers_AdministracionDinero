// ignore_for_file: must_be_immutable

part of 'pantalla_quienes_somos_bloc.dart';

/// Represents the state of PantallaQuienesSomos in the application.
class PantallaQuienesSomosState extends Equatable {
  PantallaQuienesSomosState({this.pantallaQuienesSomosModelObj});

  PantallaQuienesSomosModel? pantallaQuienesSomosModelObj;

  @override
  List<Object?> get props => [
        pantallaQuienesSomosModelObj,
      ];
  PantallaQuienesSomosState copyWith(
      {PantallaQuienesSomosModel? pantallaQuienesSomosModelObj}) {
    return PantallaQuienesSomosState(
      pantallaQuienesSomosModelObj:
          pantallaQuienesSomosModelObj ?? this.pantallaQuienesSomosModelObj,
    );
  }
}
