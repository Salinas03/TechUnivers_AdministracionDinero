// ignore_for_file: must_be_immutable

part of 'pantalla_metas_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaMetas widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaMetasEvent extends Equatable {}

/// Event that is dispatched when the PantallaMetas widget is first created.
class PantallaMetasInitialEvent extends PantallaMetasEvent {
  @override
  List<Object?> get props => [];
}
