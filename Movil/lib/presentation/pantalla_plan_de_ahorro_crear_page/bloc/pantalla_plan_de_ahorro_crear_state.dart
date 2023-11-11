// ignore_for_file: must_be_immutable

part of 'pantalla_plan_de_ahorro_crear_bloc.dart';

/// Represents the state of PantallaPlanDeAhorroCrear in the application.
class PantallaPlanDeAhorroCrearState extends Equatable {
  PantallaPlanDeAhorroCrearState({this.pantallaPlanDeAhorroCrearModelObj});

  PantallaPlanDeAhorroCrearModel? pantallaPlanDeAhorroCrearModelObj;

  @override
  List<Object?> get props => [
        pantallaPlanDeAhorroCrearModelObj,
      ];
  PantallaPlanDeAhorroCrearState copyWith(
      {PantallaPlanDeAhorroCrearModel? pantallaPlanDeAhorroCrearModelObj}) {
    return PantallaPlanDeAhorroCrearState(
      pantallaPlanDeAhorroCrearModelObj: pantallaPlanDeAhorroCrearModelObj ??
          this.pantallaPlanDeAhorroCrearModelObj,
    );
  }
}
