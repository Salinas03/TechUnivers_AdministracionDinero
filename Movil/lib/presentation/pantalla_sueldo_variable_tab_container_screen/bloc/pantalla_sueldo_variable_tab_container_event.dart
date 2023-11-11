// ignore_for_file: must_be_immutable

part of 'pantalla_sueldo_variable_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaSueldoVariableTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaSueldoVariableTabContainerEvent extends Equatable {}

/// Event that is dispatched when the PantallaSueldoVariableTabContainer widget is first created.
class PantallaSueldoVariableTabContainerInitialEvent
    extends PantallaSueldoVariableTabContainerEvent {
  @override
  List<Object?> get props => [];
}
