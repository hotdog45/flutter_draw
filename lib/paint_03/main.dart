import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaperPainter extends CustomPainter {
  
  Paint _paint;
  Path _path;
  PaperPainter(){
    _paint = Paint()
        ..color = Colors.blue
      ..isAntiAlias = false
        ..strokeWidth = 4
        ..style = PaintingStyle.fill;
    _path = Path();
  }
  
  
  @override
  void paint(Canvas canvas, Size size) {
    
    print(size);
    canvas.drawLine(Offset(150, 200), Offset(250, 200 ), _paint);
    
    _path.moveTo(100, 100);
    _path.lineTo(150, 150);

    _path.lineTo(260, 150);

    _path.lineTo(260, 360);

    canvas.drawPath(_path, _paint ..color = Colors.redAccent);
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
