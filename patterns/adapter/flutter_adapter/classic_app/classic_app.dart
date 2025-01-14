import 'dart:ui';

import '../../../observer/app_observer/observer/app_observer.dart';
import 'repaint_event.dart';
import 'repaint_compatible.dart';

abstract class ClassicApp implements RepaintCompatible {
  final events = AppObserver();

  void onMouseDown() {}

  void onPointerWheel(double deltaX, double deltaY) {}

  @override
  void repaint() {
    events.notify(RepaintEvent());
  }

  void onPaint(Canvas canvas, Size canvasSize);
}
