// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'planscreen_item_model.dart';

/// This class defines the variables used in the [pantalla_plan_de_ahorro_crear_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PantallaPlanDeAhorroCrearModel extends Equatable {
  PantallaPlanDeAhorroCrearModel({this.planscreenItemList = const []}) {}

  List<PlanscreenItemModel> planscreenItemList;

  PantallaPlanDeAhorroCrearModel copyWith(
      {List<PlanscreenItemModel>? planscreenItemList}) {
    return PantallaPlanDeAhorroCrearModel(
      planscreenItemList: planscreenItemList ?? this.planscreenItemList,
    );
  }

  @override
  List<Object?> get props => [planscreenItemList];
}
