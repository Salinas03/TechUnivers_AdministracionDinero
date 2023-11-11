import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/reportefinanzasgrid_item_model.dart';
import 'package:financia/presentation/pantalla_reporte_finanzas_screen/models/pantalla_reporte_finanzas_model.dart';
part 'pantalla_reporte_finanzas_event.dart';
part 'pantalla_reporte_finanzas_state.dart';

/// A bloc that manages the state of a PantallaReporteFinanzas according to the event that is dispatched to it.
class PantallaReporteFinanzasBloc
    extends Bloc<PantallaReporteFinanzasEvent, PantallaReporteFinanzasState> {
  PantallaReporteFinanzasBloc(PantallaReporteFinanzasState initialState)
      : super(initialState) {
    on<PantallaReporteFinanzasInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
    on<ChangeCheckBox2Event>(_changeCheckBox2);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<PantallaReporteFinanzasState> emit,
  ) {
    emit(state.copyWith(
      group153CheckBox: event.value,
    ));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<PantallaReporteFinanzasState> emit,
  ) {
    emit(state.copyWith(
      gastosCheckBox: event.value,
    ));
  }

  _changeCheckBox2(
    ChangeCheckBox2Event event,
    Emitter<PantallaReporteFinanzasState> emit,
  ) {
    emit(state.copyWith(
      ingresosCheckBox: event.value,
    ));
  }

  List<ReportefinanzasgridItemModel> fillReportefinanzasgridItemList() {
    return [
      ReportefinanzasgridItemModel(
          price: "00.00", totalDeIngresos: "Total de ingresos"),
      ReportefinanzasgridItemModel(
          price: "00.00", totalDeIngresos: "Total de gastos"),
      ReportefinanzasgridItemModel(price: "Julio", totalDeIngresos: "Mes"),
      ReportefinanzasgridItemModel(
          price: "1", totalDeIngresos: "Metas cumplidas")
    ];
  }

  _onInitialize(
    PantallaReporteFinanzasInitialEvent event,
    Emitter<PantallaReporteFinanzasState> emit,
  ) async {
    emit(state.copyWith(
      group153CheckBox: false,
      gastosCheckBox: false,
      ingresosCheckBox: false,
    ));
    emit(state.copyWith(
        pantallaReporteFinanzasModelObj:
            state.pantallaReporteFinanzasModelObj?.copyWith(
      reportefinanzasgridItemList: fillReportefinanzasgridItemList(),
    )));
  }
}
