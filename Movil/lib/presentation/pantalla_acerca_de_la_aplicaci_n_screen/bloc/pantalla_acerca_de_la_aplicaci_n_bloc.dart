import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:financia/presentation/pantalla_acerca_de_la_aplicaci_n_screen/models/pantalla_acerca_de_la_aplicaci_n_model.dart';
part 'pantalla_acerca_de_la_aplicaci_n_event.dart';
part 'pantalla_acerca_de_la_aplicaci_n_state.dart';

/// A bloc that manages the state of a PantallaAcercaDeLaAplicaciN according to the event that is dispatched to it.
class PantallaAcercaDeLaAplicaciNBloc extends Bloc<
    PantallaAcercaDeLaAplicaciNEvent, PantallaAcercaDeLaAplicaciNState> {
  PantallaAcercaDeLaAplicaciNBloc(PantallaAcercaDeLaAplicaciNState initialState)
      : super(initialState) {
    on<PantallaAcercaDeLaAplicaciNInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PantallaAcercaDeLaAplicaciNInitialEvent event,
    Emitter<PantallaAcercaDeLaAplicaciNState> emit,
  ) async {}
}
