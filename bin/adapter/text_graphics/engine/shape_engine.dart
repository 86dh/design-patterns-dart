import '../shape/shape.dart';
import 'canvas.dart';
import 'primitives.dart';

class ShapeEngine {
  final List<Shape> shapes;
  final int width;
  final int height;

  ShapeEngine({
    required this.width,
    required this.height,
    required this.shapes,
  });

  String render() {
    final can = Canvas(width, height, 3);
    for (final Shape shape in shapes) {
      can
        ..translate = Point(shape.x, shape.y)
        ..penColor = shape.color;
      shape.draw(can);
    }
    return can.toString();
  }
}