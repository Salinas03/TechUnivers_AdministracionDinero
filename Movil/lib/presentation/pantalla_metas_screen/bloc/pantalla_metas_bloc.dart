import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:financia/presentation/pantalla_metas_screen/models/pantalla_metas_model.dart';
part 'pantalla_metas_event.dart';
part 'pantalla_metas_state.dart';

/// A bloc that manages the state of a PantallaMetas according to the event that is dispatched to it.
class PantallaMetasBloc extends Bloc<PantallaMetasEvent, PantallaMetasState> {
  PantallaMetasBloc(PantallaMetasState initialState) : super(initialState) {
    on<PantallaMetasInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PantallaMetasInitialEvent event,
    Emitter<PantallaMetasState> emit,
  ) async {
    emit(state.copyWith(
      languageController: TextEditingController(),
    ));
  }
}
