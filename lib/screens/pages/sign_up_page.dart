import 'package:flutter/material.dart';
import 'package:halolfarm/constant/components/input_comp.dart';
import 'package:halolfarm/constant/constans_color.dart';
import 'package:halolfarm/constant/widgets/widgets.dart';
import 'package:halolfarm/sizeconfige/sizeconfig.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(he(14)),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: he(20)),
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colorss.blueColor,
                  ),
                  SizedBox(width: wi(5)),
                  GestureDetector(
                    child: Textwidgest(
                      text: 'Ortga',
                      size: he(16),
                      color: Colorss.blueColor,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: wi(40)),
                  Textwidgest(
                    text: 'Ro’yxatdan o’tish',
                    size: he(18),
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              SizedBox(height: he(55)),
              TextFormField(
                  decoration:
                      InputComp.inputDecComp('To’liq ism-familiyangiz')),
              SizedBox(height: he(31)),
              TextFormField(
                decoration: InputComp.inputDecComp('Tug’ilgan sanangiz'),
              ),
              SizedBox(height: he(31)),
              TextFormField(
                decoration: InputComp.inputDecComp('Telefon raqamingiz'),
              ),
              SizedBox(height: he(80)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: he(0.5),
                    width: wi(75),
                    color: Colors.grey,
                  ),
                  Textwidgest(
                    text: 'Ijtimoiy tarmoqlar orqali',
                    size: he(15),
                    color: const Color(0xFF565A57),
                  ),
                  Container(
                    height: he(0.5),
                    width: wi(75),
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(height: he(24)),
              SignUpContainer(
                text: 'Google',
                img: 'assets/images/flat-color-icons_google.png',
                withs: 343,
              ),
              SizedBox(
                height: he(12),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SignUpContainer(
                    text: 'Google',
                    img: 'assets/images/Vector.png',
                    withs: 150,
                    iconSize: 27,
                  ),
                  SignUpContainer(
                    text: 'Google',
                    img: 'assets/images/Vector (1).png',
                    withs: 150,
                    iconSize: 27,
                  )
                ],
              ),
              SizedBox(
                height: he(35),
              ),
              GestureDetector(
                child: NextButtonWidget(text: 'Keyingisi'),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
