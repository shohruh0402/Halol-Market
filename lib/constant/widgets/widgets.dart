import 'package:flutter/material.dart';
import 'package:halolfarm/constant/constans_color.dart';
import 'package:halolfarm/sizeconfige/sizeconfig.dart';

// ignore: must_be_immutable
class Textwidgest extends StatelessWidget {
  String text;
  double size;
  FontWeight fontWeight;
  double top;
  Color color;
  Textwidgest(
      {Key? key,
      required this.text,
      this.size = 26,
      this.color = Colors.black,
      this.fontWeight = FontWeight.normal,
      this.top = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: top),
      child: Text(
        text,
        style: TextStyle(fontSize: size, fontWeight: fontWeight, color: color),
      ),
    );
  }
}

// ignore: must_be_immutable
class FlagAndLanguageWidget extends StatelessWidget {
  ImageProvider? rasm;
  String til;
  FlagAndLanguageWidget({Key? key, required this.til, this.rasm})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: rasm,
            radius: 30,
          ),
          const SizedBox(
            width: 20,
          ),
          Textwidgest(
            text: til,
            size: he(18),
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ContainersWidgets extends StatelessWidget {
  double withs;
  double height;
  Widget? child;
  double radius;
  Color color;
  ContainersWidgets(
      {Key? key,
      this.height = 100,
      this.withs = 100,
      this.child,
      this.color = Colors.white,
      this.radius = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: he(height),
      width: wi(withs),
      child: child,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(he(radius)))),
    );
  }
}

// ignore: must_be_immutable
class NextButtonWidget extends StatelessWidget {
  String text;
  Color color;
  Color textColor;
  NextButtonWidget(
      {Key? key,
      required this.text,
      this.color = Colors.green,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainersWidgets(
      withs: 343,
      height: 56,
      color: color,
      radius: 12,
      child: Center(
        child: Textwidgest(
          text: text,
          color: textColor,
          size: he(17),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class OnboardWidgets extends StatelessWidget {
  double left;
  double right;
  String picture;
  OnboardWidgets({Key? key, this.picture = '', this.left = 0, this.right = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: he(400),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(left),
          bottomRight: Radius.circular(right),
        ),
        image: DecorationImage(image: AssetImage(picture), fit: BoxFit.cover),
      ),
    );
  }
}

// ignore: must_be_immutable
class ScrollCircleWidgets extends StatelessWidget {
  int index;
  int pageImdex;
  ScrollCircleWidgets({Key? key, required this.index, required this.pageImdex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 6,
        backgroundColor: index == pageImdex ? Colorss.mainColor : Colors.grey,
      ),
    );
  }
}

class SignUpContainer extends StatelessWidget {
  String text;
  String img;
  double withs;
  double iconSize;
  SignUpContainer(
      {Key? key, required this.text, required this.img, this.withs = 166,this.iconSize = 40})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainersWidgets(
      height: he(56),
      withs: wi(withs),
      color: Color(0XFFF2F1F7),
      radius: he(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            img,
            height: he(iconSize),
          ),
          SizedBox(width: wi(10),),
          Textwidgest(
            text: text,
            size: he(17),
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
