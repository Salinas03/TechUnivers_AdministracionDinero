// ignore_for_file: must_be_immutable

part of 'pantalla_sueldo_fijo_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaSueldoFijoTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaSueldoFijoTabContainerEvent extends Equatable {}

/// Event that is dispatched when the PantallaSueldoFijoTabContainer widget is first created.
class PantallaSueldoFijoTabContainerInitialEvent
    extends PantallaSueldoFijoTabContainerEvent {
  @override
  List<Object?> get props => [];
}
