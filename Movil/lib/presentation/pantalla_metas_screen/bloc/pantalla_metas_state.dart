// ignore_for_file: must_be_immutable

part of 'pantalla_metas_bloc.dart';

/// Represents the state of PantallaMetas in the application.
class PantallaMetasState extends Equatable {
  PantallaMetasState({
    this.languageController,
    this.pantallaMetasModelObj,
  });

  TextEditingController? languageController;

  PantallaMetasModel? pantallaMetasModelObj;

  @override
  List<Object?> get props => [
        languageController,
        pantallaMetasModelObj,
      ];
  PantallaMetasState copyWith({
    TextEditingController? languageController,
    PantallaMetasModel? pantallaMetasModelObj,
  }) {
    return PantallaMetasState(
      languageController: languageController ?? this.languageController,
      pantallaMetasModelObj:
          pantallaMetasModelObj ?? this.pantallaMetasModelObj,
    );
  }
}
