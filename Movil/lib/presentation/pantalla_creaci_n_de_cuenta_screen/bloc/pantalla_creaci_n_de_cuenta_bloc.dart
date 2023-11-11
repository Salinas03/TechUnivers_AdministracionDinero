import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:financia/presentation/pantalla_creaci_n_de_cuenta_screen/models/pantalla_creaci_n_de_cuenta_model.dart';
part 'pantalla_creaci_n_de_cuenta_event.dart';
part 'pantalla_creaci_n_de_cuenta_state.dart';

/// A bloc that manages the state of a PantallaCreaciNDeCuenta according to the event that is dispatched to it.
class PantallaCreaciNDeCuentaBloc
    extends Bloc<PantallaCreaciNDeCuentaEvent, PantallaCreaciNDeCuentaState> {
  PantallaCreaciNDeCuentaBloc(PantallaCreaciNDeCuentaState initialState)
      : super(initialState) {
    on<PantallaCreaciNDeCuentaInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<PantallaCreaciNDeCuentaState> emit,
  ) {
    emit(state.copyWith(acceptTermsCheckbox: event.value));
  }

  _onInitialize(
    PantallaCreaciNDeCuentaInitialEvent event,
    Emitter<PantallaCreaciNDeCuentaState> emit,
  ) async {
    emit(state.copyWith(
        userInfoController: TextEditingController(),
        userLastNameController: TextEditingController(),
        userAgeController: TextEditingController(),
        userEmailController: TextEditingController(),
        userPhoneController: TextEditingController(),
        userPasswordController: TextEditingController(),
        acceptTermsCheckbox: false));
  }
}
