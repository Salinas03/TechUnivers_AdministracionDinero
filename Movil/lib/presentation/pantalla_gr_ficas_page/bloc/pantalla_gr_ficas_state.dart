// ignore_for_file: must_be_immutable

part of 'pantalla_gr_ficas_bloc.dart';

/// Represents the state of PantallaGrFicas in the application.
class PantallaGrFicasState extends Equatable {
  PantallaGrFicasState({this.pantallaGrFicasModelObj});

  PantallaGrFicasModel? pantallaGrFicasModelObj;

  @override
  List<Object?> get props => [
        pantallaGrFicasModelObj,
      ];
  PantallaGrFicasState copyWith(
      {PantallaGrFicasModel? pantallaGrFicasModelObj}) {
    return PantallaGrFicasState(
      pantallaGrFicasModelObj:
          pantallaGrFicasModelObj ?? this.pantallaGrFicasModelObj,
    );
  }
}
