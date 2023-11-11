// ignore_for_file: must_be_immutable

part of 'pantalla_gr_ficas_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaGrFicas widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaGrFicasEvent extends Equatable {}

/// Event that is dispatched when the PantallaGrFicas widget is first created.
class PantallaGrFicasInitialEvent extends PantallaGrFicasEvent {
  @override
  List<Object?> get props => [];
}
