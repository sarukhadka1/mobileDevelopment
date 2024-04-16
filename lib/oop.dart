// Abstraction
abstract class Shape {
  // Encapsulation
  double get area;
  double get perimeter;
}

// Inheritance
class Rectangle extends Shape {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  // Polymorphism
  @override
  double get area => width * height;

+  @override
  double get perimeter => 2 * (width + height);
}

void main() {
  Shape shape = Rectangle(5, 10);
  print('Area: ${shape.area}');
  print('Perimeter: ${shape.perimeter}');
}