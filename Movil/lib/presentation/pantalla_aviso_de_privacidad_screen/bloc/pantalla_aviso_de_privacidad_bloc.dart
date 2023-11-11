import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:financia/presentation/pantalla_aviso_de_privacidad_screen/models/pantalla_aviso_de_privacidad_model.dart';
part 'pantalla_aviso_de_privacidad_event.dart';
part 'pantalla_aviso_de_privacidad_state.dart';

/// A bloc that manages the state of a PantallaAvisoDePrivacidad according to the event that is dispatched to it.
class PantallaAvisoDePrivacidadBloc extends Bloc<PantallaAvisoDePrivacidadEvent,
    PantallaAvisoDePrivacidadState> {
  PantallaAvisoDePrivacidadBloc(PantallaAvisoDePrivacidadState initialState)
      : super(initialState) {
    on<PantallaAvisoDePrivacidadInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PantallaAvisoDePrivacidadInitialEvent event,
    Emitter<PantallaAvisoDePrivacidadState> emit,
  ) async {}
}
