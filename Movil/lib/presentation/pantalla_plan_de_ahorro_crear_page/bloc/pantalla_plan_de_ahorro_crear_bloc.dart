import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/planscreen_item_model.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_crear_page/models/pantalla_plan_de_ahorro_crear_model.dart';
part 'pantalla_plan_de_ahorro_crear_event.dart';
part 'pantalla_plan_de_ahorro_crear_state.dart';

/// A bloc that manages the state of a PantallaPlanDeAhorroCrear according to the event that is dispatched to it.
class PantallaPlanDeAhorroCrearBloc extends Bloc<PantallaPlanDeAhorroCrearEvent,
    PantallaPlanDeAhorroCrearState> {
  PantallaPlanDeAhorroCrearBloc(PantallaPlanDeAhorroCrearState initialState)
      : super(initialState) {
    on<PantallaPlanDeAhorroCrearInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PantallaPlanDeAhorroCrearInitialEvent event,
    Emitter<PantallaPlanDeAhorroCrearState> emit,
  ) async {
    emit(state.copyWith(
        pantallaPlanDeAhorroCrearModelObj: state
            .pantallaPlanDeAhorroCrearModelObj
            ?.copyWith(planscreenItemList: fillPlanscreenItemList())));
  }

  List<PlanscreenItemModel> fillPlanscreenItemList() {
    return [
      PlanscreenItemModel(
          cuLEsTuMeta: "¿Cuál es tu meta?",
          comprarmeUnaNueva:
              "Comprarme una nueva computadora\npara la universidad",
          culestumeta: ImageConstant.imgMeta1),
      PlanscreenItemModel(
          cuLEsTuMeta: "¿Cuánto puedes ahorrar?",
          comprarmeUnaNueva: "Puedo ahorrar 1,000 al mes",
          culestumeta: ImageConstant.imgAhorro1),
      PlanscreenItemModel(
          cuLEsTuMeta: "¿En cuánto tiempo?",
          comprarmeUnaNueva: "Juntando ahorros, en un año lo lograre",
          culestumeta: ImageConstant.imgTiempo1)
    ];
  }
}
