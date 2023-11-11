// ignore_for_file: must_be_immutable

part of 'pantalla_gr_ficas_tab_container_bloc.dart';

/// Represents the state of PantallaGrFicasTabContainer in the application.
class PantallaGrFicasTabContainerState extends Equatable {
  PantallaGrFicasTabContainerState({this.pantallaGrFicasTabContainerModelObj});

  PantallaGrFicasTabContainerModel? pantallaGrFicasTabContainerModelObj;

  @override
  List<Object?> get props => [
        pantallaGrFicasTabContainerModelObj,
      ];
  PantallaGrFicasTabContainerState copyWith(
      {PantallaGrFicasTabContainerModel? pantallaGrFicasTabContainerModelObj}) {
    return PantallaGrFicasTabContainerState(
      pantallaGrFicasTabContainerModelObj:
          pantallaGrFicasTabContainerModelObj ??
              this.pantallaGrFicasTabContainerModelObj,
    );
  }
}
