// ignore_for_file: must_be_immutable

part of 'pantalla_sueldo_variable_bloc.dart';

/// Represents the state of PantallaSueldoVariable in the application.
class PantallaSueldoVariableState extends Equatable {
  PantallaSueldoVariableState({
    this.siEditTextController,
    this.siEditTextController1,
    this.spotify = false,
    this.netflix = false,
    this.disney = false,
    this.hbo = false,
    this.amazon = false,
    this.otro = false,
    this.pantallaSueldoVariableModelObj,
  });

  TextEditingController? siEditTextController;

  TextEditingController? siEditTextController1;

  PantallaSueldoVariableModel? pantallaSueldoVariableModelObj;

  bool spotify;

  bool netflix;

  bool disney;

  bool hbo;

  bool amazon;

  bool otro;

  @override
  List<Object?> get props => [
        siEditTextController,
        siEditTextController1,
        spotify,
        netflix,
        disney,
        hbo,
        amazon,
        otro,
        pantallaSueldoVariableModelObj,
      ];
  PantallaSueldoVariableState copyWith({
    TextEditingController? siEditTextController,
    TextEditingController? siEditTextController1,
    bool? spotify,
    bool? netflix,
    bool? disney,
    bool? hbo,
    bool? amazon,
    bool? otro,
    PantallaSueldoVariableModel? pantallaSueldoVariableModelObj,
  }) {
    return PantallaSueldoVariableState(
      siEditTextController: siEditTextController ?? this.siEditTextController,
      siEditTextController1:
          siEditTextController1 ?? this.siEditTextController1,
      spotify: spotify ?? this.spotify,
      netflix: netflix ?? this.netflix,
      disney: disney ?? this.disney,
      hbo: hbo ?? this.hbo,
      amazon: amazon ?? this.amazon,
      otro: otro ?? this.otro,
      pantallaSueldoVariableModelObj:
          pantallaSueldoVariableModelObj ?? this.pantallaSueldoVariableModelObj,
    );
  }
}
