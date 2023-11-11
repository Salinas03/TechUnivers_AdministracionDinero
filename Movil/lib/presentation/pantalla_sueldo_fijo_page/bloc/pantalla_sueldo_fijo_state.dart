// ignore_for_file: must_be_immutable

part of 'pantalla_sueldo_fijo_bloc.dart';

/// Represents the state of PantallaSueldoFijo in the application.
class PantallaSueldoFijoState extends Equatable {
  PantallaSueldoFijoState({
    this.consideraLosGastosController,
    this.amazonEditTextController,
    this.otroEditTextController,
    this.spotify = false,
    this.netflix = false,
    this.disney = false,
    this.hbo = false,
    this.amazon = false,
    this.otro = false,
    this.pantallaSueldoFijoModelObj,
  });

  TextEditingController? consideraLosGastosController;

  TextEditingController? amazonEditTextController;

  TextEditingController? otroEditTextController;

  PantallaSueldoFijoModel? pantallaSueldoFijoModelObj;

  bool spotify;

  bool netflix;

  bool disney;

  bool hbo;

  bool amazon;

  bool otro;

  @override
  List<Object?> get props => [
        consideraLosGastosController,
        amazonEditTextController,
        otroEditTextController,
        spotify,
        netflix,
        disney,
        hbo,
        amazon,
        otro,
        pantallaSueldoFijoModelObj,
      ];
  PantallaSueldoFijoState copyWith({
    TextEditingController? consideraLosGastosController,
    TextEditingController? amazonEditTextController,
    TextEditingController? otroEditTextController,
    bool? spotify,
    bool? netflix,
    bool? disney,
    bool? hbo,
    bool? amazon,
    bool? otro,
    PantallaSueldoFijoModel? pantallaSueldoFijoModelObj,
  }) {
    return PantallaSueldoFijoState(
      consideraLosGastosController:
          consideraLosGastosController ?? this.consideraLosGastosController,
      amazonEditTextController:
          amazonEditTextController ?? this.amazonEditTextController,
      otroEditTextController:
          otroEditTextController ?? this.otroEditTextController,
      spotify: spotify ?? this.spotify,
      netflix: netflix ?? this.netflix,
      disney: disney ?? this.disney,
      hbo: hbo ?? this.hbo,
      amazon: amazon ?? this.amazon,
      otro: otro ?? this.otro,
      pantallaSueldoFijoModelObj:
          pantallaSueldoFijoModelObj ?? this.pantallaSueldoFijoModelObj,
    );
  }
}
