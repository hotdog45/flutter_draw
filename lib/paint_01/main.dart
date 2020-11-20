import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaperPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //创建画笔
    final Paint paint = Paint();

    //绘制圆
    canvas.drawCircle(Offset(100, 100), 50, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
   return false;
  }
}

void main() {
  //初始化
  WidgetsFlutterBinding.ensureInitialized();
  //横屏
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  //全屏
  SystemChrome.setEnabledSystemUIOverlays([]);

  runApp(Paper());
}

class Paper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomPaint(
        // 使用CustomPaint
        painter: PaperPainter(),
      ),
    );
  }
}
