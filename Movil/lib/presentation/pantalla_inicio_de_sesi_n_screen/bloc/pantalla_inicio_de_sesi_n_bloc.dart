import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:financia/presentation/pantalla_inicio_de_sesi_n_screen/models/pantalla_inicio_de_sesi_n_model.dart';
part 'pantalla_inicio_de_sesi_n_event.dart';
part 'pantalla_inicio_de_sesi_n_state.dart';

/// A bloc that manages the state of a PantallaInicioDeSesiN according to the event that is dispatched to it.
class PantallaInicioDeSesiNBloc
    extends Bloc<PantallaInicioDeSesiNEvent, PantallaInicioDeSesiNState> {
  PantallaInicioDeSesiNBloc(PantallaInicioDeSesiNState initialState)
      : super(initialState) {
    on<PantallaInicioDeSesiNInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PantallaInicioDeSesiNInitialEvent event,
    Emitter<PantallaInicioDeSesiNState> emit,
  ) async {
    emit(state.copyWith(
        userNameController: TextEditingController(),
        passwordController: TextEditingController()));
  }
}
