// ignore_for_file: must_be_immutable

part of 'pantalla_plan_de_ahorro_crear_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaPlanDeAhorroCrearContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaPlanDeAhorroCrearContainerEvent extends Equatable {}

/// Event that is dispatched when the PantallaPlanDeAhorroCrearContainer widget is first created.
class PantallaPlanDeAhorroCrearContainerInitialEvent
    extends PantallaPlanDeAhorroCrearContainerEvent {
  @override
  List<Object?> get props => [];
}
