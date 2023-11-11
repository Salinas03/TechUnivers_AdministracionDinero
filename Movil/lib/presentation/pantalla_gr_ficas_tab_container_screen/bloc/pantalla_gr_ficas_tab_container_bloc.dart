import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:financia/presentation/pantalla_gr_ficas_tab_container_screen/models/pantalla_gr_ficas_tab_container_model.dart';
part 'pantalla_gr_ficas_tab_container_event.dart';
part 'pantalla_gr_ficas_tab_container_state.dart';

/// A bloc that manages the state of a PantallaGrFicasTabContainer according to the event that is dispatched to it.
class PantallaGrFicasTabContainerBloc extends Bloc<
    PantallaGrFicasTabContainerEvent, PantallaGrFicasTabContainerState> {
  PantallaGrFicasTabContainerBloc(PantallaGrFicasTabContainerState initialState)
      : super(initialState) {
    on<PantallaGrFicasTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PantallaGrFicasTabContainerInitialEvent event,
    Emitter<PantallaGrFicasTabContainerState> emit,
  ) async {}
}
