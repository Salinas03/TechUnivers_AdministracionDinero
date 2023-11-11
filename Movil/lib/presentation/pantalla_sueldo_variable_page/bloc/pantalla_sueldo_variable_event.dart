// ignore_for_file: must_be_immutable

part of 'pantalla_sueldo_variable_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaSueldoVariable widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaSueldoVariableEvent extends Equatable {}

/// Event that is dispatched when the PantallaSueldoVariable widget is first created.
class PantallaSueldoVariableInitialEvent extends PantallaSueldoVariableEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends PantallaSueldoVariableEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends PantallaSueldoVariableEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox2Event extends PantallaSueldoVariableEvent {
  ChangeCheckBox2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox3Event extends PantallaSueldoVariableEvent {
  ChangeCheckBox3Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox4Event extends PantallaSueldoVariableEvent {
  ChangeCheckBox4Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox5Event extends PantallaSueldoVariableEvent {
  ChangeCheckBox5Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
