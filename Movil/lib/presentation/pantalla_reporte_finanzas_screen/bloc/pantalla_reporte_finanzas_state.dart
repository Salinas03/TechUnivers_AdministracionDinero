// ignore_for_file: must_be_immutable

part of 'pantalla_reporte_finanzas_bloc.dart';

/// Represents the state of PantallaReporteFinanzas in the application.
class PantallaReporteFinanzasState extends Equatable {
  PantallaReporteFinanzasState({
    this.group153CheckBox = false,
    this.gastosCheckBox = false,
    this.ingresosCheckBox = false,
    this.pantallaReporteFinanzasModelObj,
  });

  PantallaReporteFinanzasModel? pantallaReporteFinanzasModelObj;

  bool group153CheckBox;

  bool gastosCheckBox;

  bool ingresosCheckBox;

  @override
  List<Object?> get props => [
        group153CheckBox,
        gastosCheckBox,
        ingresosCheckBox,
        pantallaReporteFinanzasModelObj,
      ];
  PantallaReporteFinanzasState copyWith({
    bool? group153CheckBox,
    bool? gastosCheckBox,
    bool? ingresosCheckBox,
    PantallaReporteFinanzasModel? pantallaReporteFinanzasModelObj,
  }) {
    return PantallaReporteFinanzasState(
      group153CheckBox: group153CheckBox ?? this.group153CheckBox,
      gastosCheckBox: gastosCheckBox ?? this.gastosCheckBox,
      ingresosCheckBox: ingresosCheckBox ?? this.ingresosCheckBox,
      pantallaReporteFinanzasModelObj: pantallaReporteFinanzasModelObj ??
          this.pantallaReporteFinanzasModelObj,
    );
  }
}
