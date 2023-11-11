// ignore_for_file: must_be_immutable

part of 'pantalla_splash_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaSplash widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaSplashEvent extends Equatable {}

/// Event that is dispatched when the PantallaSplash widget is first created.
class PantallaSplashInitialEvent extends PantallaSplashEvent {
  @override
  List<Object?> get props => [];
}
