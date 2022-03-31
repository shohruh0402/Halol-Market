import 'package:flutter/material.dart';
import 'package:halolfarm/constant/components/decoration_component.dart';
import 'package:halolfarm/constant/constans_color.dart';
import 'package:halolfarm/constant/widgets/widgets.dart';
import 'package:halolfarm/sizeconfige/sizeconfig.dart';

class SignUpOrSignInPage extends StatelessWidget {
  const SignUpOrSignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Components.bacroundImage,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colorss.mainColor.withOpacity(0.9),
          child: Padding(
            padding: EdgeInsets.all(he(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: wi(280), top: he(40)),
                  child: Textwidgest(
                    text: 'Skip',
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: he(25)),
                Center(
                  child: Image.asset(
                    'assets/images/halolrasm.png',
                    height: he(60),
                    width: wi(200),
                  ),
                ),
                SizedBox(height: he(90)),
                Textwidgest(
                  text: 'Chorva hayvonlarini\nonlayn boqish',
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  size: 36,
                ),
                SizedBox(height: he(16)),
                Textwidgest(
                  text:
                      'Xuddi “My Tom Cat” dagidek. Faqat haqiqiy hayvonlarni. Maqsad: musulmon aholini o’zi ishonadigan halol go’sht bilan ta’minlash',
                  // ignore: use_full_hex_values_for_flutter_colors
                  color: const Color(0xfffffffff).withOpacity(0.8),
                  fontWeight: FontWeight.w700,
                  size: 16,
                ),
                SizedBox(height: he(150)),
                GestureDetector(
                  child: NextButtonWidget(
                    text: 'Ro’yxatdan o’tish',
                    color: Colors.white,
                    textColor: Colors.black,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                ),
                SizedBox(height: he(30)),
                Center(
                    child: Textwidgest(
                  text: 'Akkauntga kirish',
                  color: Colors.white,
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
