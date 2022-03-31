import 'package:flutter/material.dart';
import 'package:halolfarm/constant/constans_color.dart';
import 'package:halolfarm/constant/widgets/widgets.dart';
import 'package:halolfarm/sizeconfige/sizeconfig.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  List<String> picture = [
    'assets/images/photo 01.png',
    'assets/images/photo 02.png',
    'assets/images/photo 03.png'
  ];

  List<String> name = [
    'Sevimli hayvonlaringizni\nonlayn sotib oling',
    'Ularni onlayn nazorat\nostida fermada boqing',
    'Hayvoningizni istalgan\npaytda yetkazib beramiz'
  ];

  int ind = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ContainersWidgets(
            height: he(420),
            withs: double.infinity,
            child: PageView.builder(
                onPageChanged: (v) {
                  setState(() {
                    ind = v;
                  });
                },
                physics: const BouncingScrollPhysics(),
                itemCount: picture.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OnboardWidgets(
                          picture: picture[index],
                          left: index == 0 ? 40 : 0,
                          right: index == 2 ? 40 : 0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: wi(16), top: he(32)),
                          child: Textwidgest(
                            text: name[index],
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScrollCircleWidgets(
                index: 0,
                pageImdex: ind,
              ),
              ScrollCircleWidgets(
                index: 1,
                pageImdex: ind,
              ),
              ScrollCircleWidgets(
                index: 2,
                pageImdex: ind,
              ),
            ],
          ),
          SizedBox(height: he(55)),
          GestureDetector(
            child: NextButtonWidget(
              text: 'Keyingisi',
              color: Colorss.mainColor,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/or');
            },
          ),
        ],
      ),
    );
  }
}
