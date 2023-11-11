import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/plandeahorromodificacion_item_model.dart';
import 'package:financia/presentation/pantalla_plan_de_ahorro_modificaci_n_page/models/pantalla_plan_de_ahorro_modificaci_n_model.dart';
part 'pantalla_plan_de_ahorro_modificaci_n_event.dart';
part 'pantalla_plan_de_ahorro_modificaci_n_state.dart';

/// A bloc that manages the state of a PantallaPlanDeAhorroModificaciN according to the event that is dispatched to it.
class PantallaPlanDeAhorroModificaciNBloc extends Bloc<
    PantallaPlanDeAhorroModificaciNEvent,
    PantallaPlanDeAhorroModificaciNState> {
  PantallaPlanDeAhorroModificaciNBloc(
      PantallaPlanDeAhorroModificaciNState initialState)
      : super(initialState) {
    on<PantallaPlanDeAhorroModificaciNInitialEvent>(_onInitialize);
  }

  List<PlandeahorromodificacionItemModel>
      fillPlandeahorromodificacionItemList() {
    return [
      PlandeahorromodificacionItemModel(
          cuLEsTuMeta: "¿Cuál es tu meta?",
          comprarmeUnaNueva:
              "Comprarme una nueva computadora\npara la universidad",
          culestumeta: ImageConstant.imgMeta1),
      PlandeahorromodificacionItemModel(
          cuLEsTuMeta: "¿Cuánto puedes ahorrar?",
          comprarmeUnaNueva: "Puedo ahorrar 1,000 al mes",
          culestumeta: ImageConstant.imgAhorro1),
      PlandeahorromodificacionItemModel(
          cuLEsTuMeta: "¿En cuánto tiempo?",
          comprarmeUnaNueva: "Juntando ahorros, en un año lo lograre",
          culestumeta: ImageConstant.imgTiempo1)
    ];
  }

  _onInitialize(
    PantallaPlanDeAhorroModificaciNInitialEvent event,
    Emitter<PantallaPlanDeAhorroModificaciNState> emit,
  ) async {
    emit(state.copyWith(
      priceController: TextEditingController(),
    ));
    emit(state.copyWith(
        pantallaPlanDeAhorroModificaciNModelObj:
            state.pantallaPlanDeAhorroModificaciNModelObj?.copyWith(
      plandeahorromodificacionItemList: fillPlandeahorromodificacionItemList(),
    )));
  }
}
