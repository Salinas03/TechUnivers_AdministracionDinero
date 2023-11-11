// ignore_for_file: must_be_immutable

part of 'pantalla_sueldo_fijo_tab_container_bloc.dart';

/// Represents the state of PantallaSueldoFijoTabContainer in the application.
class PantallaSueldoFijoTabContainerState extends Equatable {
  PantallaSueldoFijoTabContainerState(
      {this.pantallaSueldoFijoTabContainerModelObj});

  PantallaSueldoFijoTabContainerModel? pantallaSueldoFijoTabContainerModelObj;

  @override
  List<Object?> get props => [
        pantallaSueldoFijoTabContainerModelObj,
      ];
  PantallaSueldoFijoTabContainerState copyWith(
      {PantallaSueldoFijoTabContainerModel?
          pantallaSueldoFijoTabContainerModelObj}) {
    return PantallaSueldoFijoTabContainerState(
      pantallaSueldoFijoTabContainerModelObj:
          pantallaSueldoFijoTabContainerModelObj ??
              this.pantallaSueldoFijoTabContainerModelObj,
    );
  }
}
