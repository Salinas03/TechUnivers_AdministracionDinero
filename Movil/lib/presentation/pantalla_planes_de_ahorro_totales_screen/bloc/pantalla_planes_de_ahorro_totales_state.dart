// ignore_for_file: must_be_immutable

part of 'pantalla_planes_de_ahorro_totales_bloc.dart';

/// Represents the state of PantallaPlanesDeAhorroTotales in the application.
class PantallaPlanesDeAhorroTotalesState extends Equatable {
  PantallaPlanesDeAhorroTotalesState(
      {this.pantallaPlanesDeAhorroTotalesModelObj});

  PantallaPlanesDeAhorroTotalesModel? pantallaPlanesDeAhorroTotalesModelObj;

  @override
  List<Object?> get props => [
        pantallaPlanesDeAhorroTotalesModelObj,
      ];
  PantallaPlanesDeAhorroTotalesState copyWith(
      {PantallaPlanesDeAhorroTotalesModel?
          pantallaPlanesDeAhorroTotalesModelObj}) {
    return PantallaPlanesDeAhorroTotalesState(
      pantallaPlanesDeAhorroTotalesModelObj:
          pantallaPlanesDeAhorroTotalesModelObj ??
              this.pantallaPlanesDeAhorroTotalesModelObj,
    );
  }
}
