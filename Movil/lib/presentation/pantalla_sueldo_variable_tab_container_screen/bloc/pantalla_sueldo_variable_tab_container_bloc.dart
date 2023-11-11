import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:financia/presentation/pantalla_sueldo_variable_tab_container_screen/models/pantalla_sueldo_variable_tab_container_model.dart';
part 'pantalla_sueldo_variable_tab_container_event.dart';
part 'pantalla_sueldo_variable_tab_container_state.dart';

/// A bloc that manages the state of a PantallaSueldoVariableTabContainer according to the event that is dispatched to it.
class PantallaSueldoVariableTabContainerBloc extends Bloc<
    PantallaSueldoVariableTabContainerEvent,
    PantallaSueldoVariableTabContainerState> {
  PantallaSueldoVariableTabContainerBloc(
      PantallaSueldoVariableTabContainerState initialState)
      : super(initialState) {
    on<PantallaSueldoVariableTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PantallaSueldoVariableTabContainerInitialEvent event,
    Emitter<PantallaSueldoVariableTabContainerState> emit,
  ) async {}
}
