import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:financia/presentation/pantalla_sueldo_fijo_page/models/pantalla_sueldo_fijo_model.dart';
part 'pantalla_sueldo_fijo_event.dart';
part 'pantalla_sueldo_fijo_state.dart';

/// A bloc that manages the state of a PantallaSueldoFijo according to the event that is dispatched to it.
class PantallaSueldoFijoBloc
    extends Bloc<PantallaSueldoFijoEvent, PantallaSueldoFijoState> {
  PantallaSueldoFijoBloc(PantallaSueldoFijoState initialState)
      : super(initialState) {
    on<PantallaSueldoFijoInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
    on<ChangeCheckBox2Event>(_changeCheckBox2);
    on<ChangeCheckBox3Event>(_changeCheckBox3);
    on<ChangeCheckBox4Event>(_changeCheckBox4);
    on<ChangeCheckBox5Event>(_changeCheckBox5);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<PantallaSueldoFijoState> emit,
  ) {
    emit(state.copyWith(spotify: event.value));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<PantallaSueldoFijoState> emit,
  ) {
    emit(state.copyWith(netflix: event.value));
  }

  _changeCheckBox2(
    ChangeCheckBox2Event event,
    Emitter<PantallaSueldoFijoState> emit,
  ) {
    emit(state.copyWith(disney: event.value));
  }

  _changeCheckBox3(
    ChangeCheckBox3Event event,
    Emitter<PantallaSueldoFijoState> emit,
  ) {
    emit(state.copyWith(hbo: event.value));
  }

  _changeCheckBox4(
    ChangeCheckBox4Event event,
    Emitter<PantallaSueldoFijoState> emit,
  ) {
    emit(state.copyWith(amazon: event.value));
  }

  _changeCheckBox5(
    ChangeCheckBox5Event event,
    Emitter<PantallaSueldoFijoState> emit,
  ) {
    emit(state.copyWith(otro: event.value));
  }

  _onInitialize(
    PantallaSueldoFijoInitialEvent event,
    Emitter<PantallaSueldoFijoState> emit,
  ) async {
    emit(state.copyWith(
        consideraLosGastosController: TextEditingController(),
        amazonEditTextController: TextEditingController(),
        otroEditTextController: TextEditingController(),
        spotify: false,
        netflix: false,
        disney: false,
        hbo: false,
        amazon: false,
        otro: false));
  }
}
