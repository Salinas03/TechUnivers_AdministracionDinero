import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:financia/presentation/pantalla_planes_de_ahorro_totales_screen/models/pantalla_planes_de_ahorro_totales_model.dart';
part 'pantalla_planes_de_ahorro_totales_event.dart';
part 'pantalla_planes_de_ahorro_totales_state.dart';

/// A bloc that manages the state of a PantallaPlanesDeAhorroTotales according to the event that is dispatched to it.
class PantallaPlanesDeAhorroTotalesBloc extends Bloc<
    PantallaPlanesDeAhorroTotalesEvent, PantallaPlanesDeAhorroTotalesState> {
  PantallaPlanesDeAhorroTotalesBloc(
      PantallaPlanesDeAhorroTotalesState initialState)
      : super(initialState) {
    on<PantallaPlanesDeAhorroTotalesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PantallaPlanesDeAhorroTotalesInitialEvent event,
    Emitter<PantallaPlanesDeAhorroTotalesState> emit,
  ) async {}
}
