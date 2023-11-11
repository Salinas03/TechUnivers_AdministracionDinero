// ignore_for_file: must_be_immutable

part of 'pantalla_plan_de_ahorro_modificaci_n_bloc.dart';

/// Represents the state of PantallaPlanDeAhorroModificaciN in the application.
class PantallaPlanDeAhorroModificaciNState extends Equatable {
  PantallaPlanDeAhorroModificaciNState({
    this.priceController,
    this.pantallaPlanDeAhorroModificaciNModelObj,
  });

  TextEditingController? priceController;

  PantallaPlanDeAhorroModificaciNModel? pantallaPlanDeAhorroModificaciNModelObj;

  @override
  List<Object?> get props => [
        priceController,
        pantallaPlanDeAhorroModificaciNModelObj,
      ];
  PantallaPlanDeAhorroModificaciNState copyWith({
    TextEditingController? priceController,
    PantallaPlanDeAhorroModificaciNModel?
        pantallaPlanDeAhorroModificaciNModelObj,
  }) {
    return PantallaPlanDeAhorroModificaciNState(
      priceController: priceController ?? this.priceController,
      pantallaPlanDeAhorroModificaciNModelObj:
          pantallaPlanDeAhorroModificaciNModelObj ??
              this.pantallaPlanDeAhorroModificaciNModelObj,
    );
  }
}
