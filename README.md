
# Flutter Custom Painter Showcase

This project demonstrates various custom shapes and painting techniques in Flutter using the `CustomPainter` class. Each shape is implemented in its own Dart file under `lib/shapes/` and can be previewed in the app via `Screen1`.

## Custom Painters Implemented

### 1. HeartPainter
- **File:** `lib/shapes/heart_painter.dart`
- **Description:** Draws an animated heart shape using cubic Bezier curves and arcs. The animation is controlled by an `AnimationController` and reveals the heart path progressively.
- **Features:**
  - Animated drawing using `PathMetric` and `extractPath`.
  - Smooth heart shape with cubic curves and arcs.

### 2. CirclePainter
- **File:** `lib/shapes/circle_painter.dart`
- **Description:** Draws multiple circles at different positions and radii within the canvas.
- **Features:**
  - Central large circle and four smaller circles at the corners.

### 3. ColorsPainters
- **File:** `lib/shapes/colors_painters.dart`
- **Description:** Fills the canvas with a linear gradient using indigo and blue shades.
- **Features:**
  - Uses `ui.Gradient.linear` for smooth color transitions.

### 4. ConictoRelativeconicto
- **File:** `lib/shapes/conicto_relativeconicto.dart`
- **Description:** Demonstrates the use of cubic Bezier curves to create a flowing path.
- **Features:**
  - Custom path with cubic curves.

### 5. DifferenceofRect
- **File:** `lib/shapes/differenceof_rect.dart`
- **Description:** Draws two rounded rectangles and demonstrates the use of `drawDRRect` to show the difference between them.
- **Features:**
  - Overlapping rounded rectangles with different sizes.

### 6. LinePainter
- **File:** `lib/shapes/line_painter.dart`
- **Description:** Draws multiple lines across the canvas, including diagonals and borders.
- **Features:**
  - Demonstrates various line drawing techniques.

### 7. MoveToLineTo
- **File:** `lib/shapes/move_to_line_to.dart`
- **Description:** Shows the use of `moveTo`, `lineTo`, `relativeMoveTo`, and `relativeLineTo` for path manipulation.
- **Features:**
  - Simple path with absolute and relative moves and lines.

### 8. OvalPainter
- **File:** `lib/shapes/oval_painter.dart`
- **Description:** Draws multiple ovals with different positions and sizes.
- **Features:**
  - Demonstrates `drawOval` with various rectangles.

### 9. PathPainter
- **File:** `lib/shapes/path_painter.dart`
- **Description:** Combines rectangles and arcs into a single path and draws it.
- **Features:**
  - Uses `addRect` and `addArc` for complex path creation.

### 10. PointsPainter
- **File:** `lib/shapes/points_painter.dart`
- **Description:** Draws a polygon using a set of points.
- **Features:**
  - Uses `drawPoints` with `PointMode.polygon`.

### 11. RectanglePainter
- **File:** `lib/shapes/rectangle_painter.dart`
- **Description:** Draws rectangles using various constructors (`fromCenter`, `fromCircle`, `fromLTRB`, `fromLTWH`, `fromPoints`).
- **Features:**
  - Demonstrates multiple rectangle creation methods.

### 12. RoundedRectanglePainter
- **File:** `lib/shapes/rounded_rectangle_painter.dart`
- **Description:** Draws rounded rectangles with different radii and corner configurations.
- **Features:**
  - Uses `fromRectAndRadius`, `fromRectAndCorners`, and `fromRectXY`.

### 13. TriangularShapePainter
- **File:** `lib/shapes/triangular_shape_painter.dart`
- **Description:** Draws a triangle using points and adds arcs to create a unique shape.
- **Features:**
  - Combines polygon and arc drawing for custom shapes.

## How to Run

1. Ensure you have Flutter installed.
2. Run `flutter pub get` to fetch dependencies.
3. Use `flutter run` to launch the app on your preferred device or emulator.

## Screenshots
_Add screenshots of each shape here for better visualization._

## License
This project is for educational purposes and demonstrates custom drawing in Flutter.
