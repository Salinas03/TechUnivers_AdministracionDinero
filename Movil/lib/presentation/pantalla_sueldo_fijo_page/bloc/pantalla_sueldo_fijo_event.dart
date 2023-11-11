// ignore_for_file: must_be_immutable

part of 'pantalla_sueldo_fijo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaSueldoFijo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaSueldoFijoEvent extends Equatable {}

/// Event that is dispatched when the PantallaSueldoFijo widget is first created.
class PantallaSueldoFijoInitialEvent extends PantallaSueldoFijoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends PantallaSueldoFijoEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends PantallaSueldoFijoEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox2Event extends PantallaSueldoFijoEvent {
  ChangeCheckBox2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox3Event extends PantallaSueldoFijoEvent {
  ChangeCheckBox3Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox4Event extends PantallaSueldoFijoEvent {
  ChangeCheckBox4Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox5Event extends PantallaSueldoFijoEvent {
  ChangeCheckBox5Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
