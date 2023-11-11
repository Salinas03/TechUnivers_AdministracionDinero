// ignore_for_file: must_be_immutable

part of 'pantalla_inicio_de_sesi_n_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaInicioDeSesiN widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaInicioDeSesiNEvent extends Equatable {}

/// Event that is dispatched when the PantallaInicioDeSesiN widget is first created.
class PantallaInicioDeSesiNInitialEvent extends PantallaInicioDeSesiNEvent {
  @override
  List<Object?> get props => [];
}
