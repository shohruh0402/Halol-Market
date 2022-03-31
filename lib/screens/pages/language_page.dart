import 'package:flutter/material.dart';
import 'package:halolfarm/constant/constans_color.dart';
import 'package:halolfarm/constant/widgets/widgets.dart';
import 'package:halolfarm/sizeconfige/sizeconfig.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(he(16)),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: he(88)),
              Image.asset(
                'assets/images/Group 1.png',
                height: he(30),
                width: wi(100),
              ),
              Textwidgest(
                text: 'Tilni tanlang',
                fontWeight: FontWeight.bold,
                top: he(67),
              ),
              Textwidgest(
                text: 'Dasturni qaysi tilda ishlatishni xohlaysiz?',
                size: 16,
                top: he(8),
              ),
              SizedBox(height: he(48)),
              Container(
                height: he(240),
                width: wi(343),
                decoration: BoxDecoration(
                    color: const Color(0xFFF2F1F7),
                    borderRadius: BorderRadius.all(Radius.circular(he(20)))),
                child: Column(
                  children: [
                    Expanded(
                        child: FlagAndLanguageWidget(
                            til: "O'zbek tili",
                            rasm: const AssetImage(
                                'assets/images/uzbekistan 1.png'))),
                    const Divider(),
                    Expanded(
                        child: FlagAndLanguageWidget(
                            til: "English",
                            rasm: const AssetImage(
                                'assets/images/united-kingdom 1.png'))),
                    const Divider(),
                    Expanded(
                        child: FlagAndLanguageWidget(
                            til: "Русский язык",
                            rasm:
                                const AssetImage('assets/images/russia 1.png')))
                  ],
                ),
              ),
              const SizedBox(
                height: 64,
              ),
              GestureDetector(
                child: NextButtonWidget(
                  text: 'Keyingisi',
                  color: Colorss.mainColor,
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/board');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
