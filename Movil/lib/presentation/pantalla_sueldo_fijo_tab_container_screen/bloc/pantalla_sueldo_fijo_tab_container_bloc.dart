import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:financia/presentation/pantalla_sueldo_fijo_tab_container_screen/models/pantalla_sueldo_fijo_tab_container_model.dart';
part 'pantalla_sueldo_fijo_tab_container_event.dart';
part 'pantalla_sueldo_fijo_tab_container_state.dart';

/// A bloc that manages the state of a PantallaSueldoFijoTabContainer according to the event that is dispatched to it.
class PantallaSueldoFijoTabContainerBloc extends Bloc<
    PantallaSueldoFijoTabContainerEvent, PantallaSueldoFijoTabContainerState> {
  PantallaSueldoFijoTabContainerBloc(
      PantallaSueldoFijoTabContainerState initialState)
      : super(initialState) {
    on<PantallaSueldoFijoTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PantallaSueldoFijoTabContainerInitialEvent event,
    Emitter<PantallaSueldoFijoTabContainerState> emit,
  ) async {}
}
