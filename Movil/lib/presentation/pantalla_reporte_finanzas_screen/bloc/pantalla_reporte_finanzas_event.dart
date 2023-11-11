// ignore_for_file: must_be_immutable

part of 'pantalla_reporte_finanzas_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaReporteFinanzas widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaReporteFinanzasEvent extends Equatable {}

/// Event that is dispatched when the PantallaReporteFinanzas widget is first created.
class PantallaReporteFinanzasInitialEvent extends PantallaReporteFinanzasEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends PantallaReporteFinanzasEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends PantallaReporteFinanzasEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox2Event extends PantallaReporteFinanzasEvent {
  ChangeCheckBox2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
