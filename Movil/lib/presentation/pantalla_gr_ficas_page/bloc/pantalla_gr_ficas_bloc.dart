import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:financia/presentation/pantalla_gr_ficas_page/models/pantalla_gr_ficas_model.dart';
part 'pantalla_gr_ficas_event.dart';
part 'pantalla_gr_ficas_state.dart';

/// A bloc that manages the state of a PantallaGrFicas according to the event that is dispatched to it.
class PantallaGrFicasBloc
    extends Bloc<PantallaGrFicasEvent, PantallaGrFicasState> {
  PantallaGrFicasBloc(PantallaGrFicasState initialState) : super(initialState) {
    on<PantallaGrFicasInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PantallaGrFicasInitialEvent event,
    Emitter<PantallaGrFicasState> emit,
  ) async {}
}
