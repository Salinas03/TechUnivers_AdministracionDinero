import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_crear_container_screen/models/pantalla_plan_de_ahorro_crear_container_model.dart';
part 'pantalla_plan_de_ahorro_crear_container_event.dart';
part 'pantalla_plan_de_ahorro_crear_container_state.dart';

/// A bloc that manages the state of a PantallaPlanDeAhorroCrearContainer according to the event that is dispatched to it.
class PantallaPlanDeAhorroCrearContainerBloc extends Bloc<
    PantallaPlanDeAhorroCrearContainerEvent,
    PantallaPlanDeAhorroCrearContainerState> {
  PantallaPlanDeAhorroCrearContainerBloc(
      PantallaPlanDeAhorroCrearContainerState initialState)
      : super(initialState) {
    on<PantallaPlanDeAhorroCrearContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PantallaPlanDeAhorroCrearContainerInitialEvent event,
    Emitter<PantallaPlanDeAhorroCrearContainerState> emit,
  ) async {}
}
