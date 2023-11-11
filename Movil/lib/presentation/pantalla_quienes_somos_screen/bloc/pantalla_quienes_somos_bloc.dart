import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:financia/presentation/pantalla_quienes_somos_screen/models/pantalla_quienes_somos_model.dart';
part 'pantalla_quienes_somos_event.dart';
part 'pantalla_quienes_somos_state.dart';

/// A bloc that manages the state of a PantallaQuienesSomos according to the event that is dispatched to it.
class PantallaQuienesSomosBloc
    extends Bloc<PantallaQuienesSomosEvent, PantallaQuienesSomosState> {
  PantallaQuienesSomosBloc(PantallaQuienesSomosState initialState)
      : super(initialState) {
    on<PantallaQuienesSomosInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PantallaQuienesSomosInitialEvent event,
    Emitter<PantallaQuienesSomosState> emit,
  ) async {}
}
