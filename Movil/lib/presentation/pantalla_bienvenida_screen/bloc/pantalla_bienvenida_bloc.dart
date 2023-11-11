import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:financia/presentation/pantalla_bienvenida_screen/models/pantalla_bienvenida_model.dart';
part 'pantalla_bienvenida_event.dart';
part 'pantalla_bienvenida_state.dart';

/// A bloc that manages the state of a PantallaBienvenida according to the event that is dispatched to it.
class PantallaBienvenidaBloc
    extends Bloc<PantallaBienvenidaEvent, PantallaBienvenidaState> {
  PantallaBienvenidaBloc(PantallaBienvenidaState initialState)
      : super(initialState) {
    on<PantallaBienvenidaInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PantallaBienvenidaInitialEvent event,
    Emitter<PantallaBienvenidaState> emit,
  ) async {}
}
