// ignore_for_file: must_be_immutable

part of 'pantalla_bienvenida_bloc.dart';

/// Represents the state of PantallaBienvenida in the application.
class PantallaBienvenidaState extends Equatable {
  PantallaBienvenidaState({this.pantallaBienvenidaModelObj});

  PantallaBienvenidaModel? pantallaBienvenidaModelObj;

  @override
  List<Object?> get props => [
        pantallaBienvenidaModelObj,
      ];
  PantallaBienvenidaState copyWith(
      {PantallaBienvenidaModel? pantallaBienvenidaModelObj}) {
    return PantallaBienvenidaState(
      pantallaBienvenidaModelObj:
          pantallaBienvenidaModelObj ?? this.pantallaBienvenidaModelObj,
    );
  }
}
