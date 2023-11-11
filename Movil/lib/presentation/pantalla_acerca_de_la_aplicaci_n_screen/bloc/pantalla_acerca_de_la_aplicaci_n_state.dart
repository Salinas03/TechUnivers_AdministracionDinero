// ignore_for_file: must_be_immutable

part of 'pantalla_acerca_de_la_aplicaci_n_bloc.dart';

/// Represents the state of PantallaAcercaDeLaAplicaciN in the application.
class PantallaAcercaDeLaAplicaciNState extends Equatable {
  PantallaAcercaDeLaAplicaciNState({this.pantallaAcercaDeLaAplicaciNModelObj});

  PantallaAcercaDeLaAplicaciNModel? pantallaAcercaDeLaAplicaciNModelObj;

  @override
  List<Object?> get props => [
        pantallaAcercaDeLaAplicaciNModelObj,
      ];
  PantallaAcercaDeLaAplicaciNState copyWith(
      {PantallaAcercaDeLaAplicaciNModel? pantallaAcercaDeLaAplicaciNModelObj}) {
    return PantallaAcercaDeLaAplicaciNState(
      pantallaAcercaDeLaAplicaciNModelObj:
          pantallaAcercaDeLaAplicaciNModelObj ??
              this.pantallaAcercaDeLaAplicaciNModelObj,
    );
  }
}
