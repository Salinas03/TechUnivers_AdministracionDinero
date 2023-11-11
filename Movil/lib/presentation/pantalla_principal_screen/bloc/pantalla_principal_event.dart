// ignore_for_file: must_be_immutable

part of 'pantalla_principal_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaPrincipal widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaPrincipalEvent extends Equatable {}

/// Event that is dispatched when the PantallaPrincipal widget is first created.
class PantallaPrincipalInitialEvent extends PantallaPrincipalEvent {
  @override
  List<Object?> get props => [];
}
