import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:financia/presentation/pantalla_registrar_cuenta_screen/models/pantalla_registrar_cuenta_model.dart';
part 'pantalla_registrar_cuenta_event.dart';
part 'pantalla_registrar_cuenta_state.dart';

/// A bloc that manages the state of a PantallaRegistrarCuenta according to the event that is dispatched to it.
class PantallaRegistrarCuentaBloc
    extends Bloc<PantallaRegistrarCuentaEvent, PantallaRegistrarCuentaState> {
  PantallaRegistrarCuentaBloc(PantallaRegistrarCuentaState initialState)
      : super(initialState) {
    on<PantallaRegistrarCuentaInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PantallaRegistrarCuentaInitialEvent event,
    Emitter<PantallaRegistrarCuentaState> emit,
  ) async {}
}
