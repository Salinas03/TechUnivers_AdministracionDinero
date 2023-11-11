// ignore_for_file: must_be_immutable

part of 'pantalla_bienvenida_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaBienvenida widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaBienvenidaEvent extends Equatable {}

/// Event that is dispatched when the PantallaBienvenida widget is first created.
class PantallaBienvenidaInitialEvent extends PantallaBienvenidaEvent {
  @override
  List<Object?> get props => [];
}
