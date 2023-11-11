import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:financia/presentation/pantalla_terminos_y_condiciones_screen/models/pantalla_terminos_y_condiciones_model.dart';
part 'pantalla_terminos_y_condiciones_event.dart';
part 'pantalla_terminos_y_condiciones_state.dart';

/// A bloc that manages the state of a PantallaTerminosYCondiciones according to the event that is dispatched to it.
class PantallaTerminosYCondicionesBloc extends Bloc<
    PantallaTerminosYCondicionesEvent, PantallaTerminosYCondicionesState> {
  PantallaTerminosYCondicionesBloc(
      PantallaTerminosYCondicionesState initialState)
      : super(initialState) {
    on<PantallaTerminosYCondicionesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PantallaTerminosYCondicionesInitialEvent event,
    Emitter<PantallaTerminosYCondicionesState> emit,
  ) async {}
}
