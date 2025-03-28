import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:true_guide/core/constants/app_colors.dart';

class DashedContainer extends StatelessWidget {
  const DashedContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashedPainter(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
        child: child,
      ),
    );
  }
}

class DashedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..color = AppColors().color742B88
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke;

    double width = 5;
    double space = 5;
    double startPointX = 0;
    double startPointY = 0;

    while (startPointX < size.width) {
      canvas.drawLine(
        Offset(startPointX, 0),
        Offset(startPointX + width, 0),
        paint,
      );
      startPointX += width + space;
    }

    while (startPointY < size.height) {
      canvas.drawLine(
        Offset(size.width, startPointY),
        Offset(size.width, startPointY + width),
        paint,
      );
      startPointY += width + space;
    }

    startPointX = 0;
    while (startPointX < size.width) {
      canvas.drawLine(
        Offset(startPointX, size.height),
        Offset(startPointX + width, size.height),
        paint,
      );
      startPointX += width + space;
    }

    startPointY = 0;
    while (startPointY < size.height) {
      canvas.drawLine(
        Offset(0, startPointY),
        Offset(0, startPointY + width),
        paint,
      );
      startPointY += width + space;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
