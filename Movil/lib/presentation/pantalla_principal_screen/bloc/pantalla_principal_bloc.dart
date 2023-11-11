import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:financia/presentation/pantalla_principal_screen/models/pantalla_principal_model.dart';
part 'pantalla_principal_event.dart';
part 'pantalla_principal_state.dart';

/// A bloc that manages the state of a PantallaPrincipal according to the event that is dispatched to it.
class PantallaPrincipalBloc
    extends Bloc<PantallaPrincipalEvent, PantallaPrincipalState> {
  PantallaPrincipalBloc(PantallaPrincipalState initialState)
      : super(initialState) {
    on<PantallaPrincipalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PantallaPrincipalInitialEvent event,
    Emitter<PantallaPrincipalState> emit,
  ) async {
    emit(state.copyWith(
        ahorroOneController: TextEditingController(),
        metaOneController: TextEditingController()));
  }
}
