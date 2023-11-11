// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'plandeahorromodificacion_item_model.dart';

/// This class defines the variables used in the [pantalla_plan_de_ahorro_modificaci_n_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PantallaPlanDeAhorroModificaciNModel extends Equatable {
  PantallaPlanDeAhorroModificaciNModel(
      {this.plandeahorromodificacionItemList = const []}) {}

  List<PlandeahorromodificacionItemModel> plandeahorromodificacionItemList;

  PantallaPlanDeAhorroModificaciNModel copyWith(
      {List<PlandeahorromodificacionItemModel>?
          plandeahorromodificacionItemList}) {
    return PantallaPlanDeAhorroModificaciNModel(
      plandeahorromodificacionItemList: plandeahorromodificacionItemList ??
          this.plandeahorromodificacionItemList,
    );
  }

  @override
  List<Object?> get props => [plandeahorromodificacionItemList];
}
