import '../../../core/app_export.dart';

/// This class is used in the [planscreen_item_widget] screen.
class PlanscreenItemModel {
  PlanscreenItemModel({
    this.cuLEsTuMeta,
    this.comprarmeUnaNueva,
    this.culestumeta,
    this.id,
  }) {
    cuLEsTuMeta = cuLEsTuMeta ?? "¿Cuál es tu meta?";
    comprarmeUnaNueva = comprarmeUnaNueva ??
        "Comprarme una nueva computadora\npara la universidad";
    culestumeta = culestumeta ?? ImageConstant.imgMeta1;
    id = id ?? "";
  }

  String? cuLEsTuMeta;

  String? comprarmeUnaNueva;

  String? culestumeta;

  String? id;
}
