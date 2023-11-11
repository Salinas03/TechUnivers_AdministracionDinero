/// This class is used in the [reportefinanzasgrid_item_widget] screen.
class ReportefinanzasgridItemModel {
  ReportefinanzasgridItemModel({
    this.price,
    this.totalDeIngresos,
    this.id,
  }) {
    price = price ?? "00.00";
    totalDeIngresos = totalDeIngresos ?? "Total de ingresos";
    id = id ?? "";
  }

  String? price;

  String? totalDeIngresos;

  String? id;
}
