import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:financia/presentation/pantalla_sueldo_variable_page/models/pantalla_sueldo_variable_model.dart';
part 'pantalla_sueldo_variable_event.dart';
part 'pantalla_sueldo_variable_state.dart';

/// A bloc that manages the state of a PantallaSueldoVariable according to the event that is dispatched to it.
class PantallaSueldoVariableBloc
    extends Bloc<PantallaSueldoVariableEvent, PantallaSueldoVariableState> {
  PantallaSueldoVariableBloc(PantallaSueldoVariableState initialState)
      : super(initialState) {
    on<PantallaSueldoVariableInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
    on<ChangeCheckBox2Event>(_changeCheckBox2);
    on<ChangeCheckBox3Event>(_changeCheckBox3);
    on<ChangeCheckBox4Event>(_changeCheckBox4);
    on<ChangeCheckBox5Event>(_changeCheckBox5);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<PantallaSueldoVariableState> emit,
  ) {
    emit(state.copyWith(spotify: event.value));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<PantallaSueldoVariableState> emit,
  ) {
    emit(state.copyWith(netflix: event.value));
  }

  _changeCheckBox2(
    ChangeCheckBox2Event event,
    Emitter<PantallaSueldoVariableState> emit,
  ) {
    emit(state.copyWith(disney: event.value));
  }

  _changeCheckBox3(
    ChangeCheckBox3Event event,
    Emitter<PantallaSueldoVariableState> emit,
  ) {
    emit(state.copyWith(hbo: event.value));
  }

  _changeCheckBox4(
    ChangeCheckBox4Event event,
    Emitter<PantallaSueldoVariableState> emit,
  ) {
    emit(state.copyWith(amazon: event.value));
  }

  _changeCheckBox5(
    ChangeCheckBox5Event event,
    Emitter<PantallaSueldoVariableState> emit,
  ) {
    emit(state.copyWith(otro: event.value));
  }

  _onInitialize(
    PantallaSueldoVariableInitialEvent event,
    Emitter<PantallaSueldoVariableState> emit,
  ) async {
    emit(state.copyWith(
        siEditTextController: TextEditingController(),
        siEditTextController1: TextEditingController(),
        spotify: false,
        netflix: false,
        disney: false,
        hbo: false,
        amazon: false,
        otro: false));
  }
}
