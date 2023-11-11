// ignore_for_file: must_be_immutable

part of 'pantalla_plan_de_ahorro_crear_container_bloc.dart';

/// Represents the state of PantallaPlanDeAhorroCrearContainer in the application.
class PantallaPlanDeAhorroCrearContainerState extends Equatable {
  PantallaPlanDeAhorroCrearContainerState(
      {this.pantallaPlanDeAhorroCrearContainerModelObj});

  PantallaPlanDeAhorroCrearContainerModel?
      pantallaPlanDeAhorroCrearContainerModelObj;

  @override
  List<Object?> get props => [
        pantallaPlanDeAhorroCrearContainerModelObj,
      ];
  PantallaPlanDeAhorroCrearContainerState copyWith(
      {PantallaPlanDeAhorroCrearContainerModel?
          pantallaPlanDeAhorroCrearContainerModelObj}) {
    return PantallaPlanDeAhorroCrearContainerState(
      pantallaPlanDeAhorroCrearContainerModelObj:
          pantallaPlanDeAhorroCrearContainerModelObj ??
              this.pantallaPlanDeAhorroCrearContainerModelObj,
    );
  }
}
