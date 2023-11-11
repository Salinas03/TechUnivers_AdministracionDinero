// ignore_for_file: must_be_immutable

part of 'pantalla_terminos_y_condiciones_bloc.dart';

/// Represents the state of PantallaTerminosYCondiciones in the application.
class PantallaTerminosYCondicionesState extends Equatable {
  PantallaTerminosYCondicionesState(
      {this.pantallaTerminosYCondicionesModelObj});

  PantallaTerminosYCondicionesModel? pantallaTerminosYCondicionesModelObj;

  @override
  List<Object?> get props => [
        pantallaTerminosYCondicionesModelObj,
      ];
  PantallaTerminosYCondicionesState copyWith(
      {PantallaTerminosYCondicionesModel?
          pantallaTerminosYCondicionesModelObj}) {
    return PantallaTerminosYCondicionesState(
      pantallaTerminosYCondicionesModelObj:
          pantallaTerminosYCondicionesModelObj ??
              this.pantallaTerminosYCondicionesModelObj,
    );
  }
}
