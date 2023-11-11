// ignore_for_file: must_be_immutable

part of 'pantalla_sueldo_variable_tab_container_bloc.dart';

/// Represents the state of PantallaSueldoVariableTabContainer in the application.
class PantallaSueldoVariableTabContainerState extends Equatable {
  PantallaSueldoVariableTabContainerState(
      {this.pantallaSueldoVariableTabContainerModelObj});

  PantallaSueldoVariableTabContainerModel?
      pantallaSueldoVariableTabContainerModelObj;

  @override
  List<Object?> get props => [
        pantallaSueldoVariableTabContainerModelObj,
      ];
  PantallaSueldoVariableTabContainerState copyWith(
      {PantallaSueldoVariableTabContainerModel?
          pantallaSueldoVariableTabContainerModelObj}) {
    return PantallaSueldoVariableTabContainerState(
      pantallaSueldoVariableTabContainerModelObj:
          pantallaSueldoVariableTabContainerModelObj ??
              this.pantallaSueldoVariableTabContainerModelObj,
    );
  }
}
