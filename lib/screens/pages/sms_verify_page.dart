import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:halolfarm/constant/widgets/widgets.dart';
import 'package:halolfarm/sizeconfige/sizeconfig.dart';

class SmsVerifyPage extends StatefulWidget {
  const SmsVerifyPage({Key? key}) : super(key: key);

  @override
  State<SmsVerifyPage> createState() => _SmsVerifyPageState();
}

class _SmsVerifyPageState extends State<SmsVerifyPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: he(48), left: wi(22)),
            child: GestureDetector(
              child: Icon(Icons.close),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          SizedBox(height: he(31)),
          Center(child: Textwidgest(text: 'SMS dagi kodni kiriting')),
          SizedBox(height: he(8)),
          Center(
            child: Textwidgest(
              text:
                  'Kod ushbu raqamga yuborildi:\n           +998 90 123 45 67',
              size: he(15),
              color: Colors.grey,
            ),
          ),
          SizedBox(height: he(56)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(radius: wi(7), backgroundColor: Colors.grey),
              SizedBox(width: wi(14)),
              CircleAvatar(radius: wi(7), backgroundColor: Colors.grey),
              SizedBox(width: wi(14)),
              CircleAvatar(radius: wi(7), backgroundColor: Colors.grey),
              SizedBox(width: wi(14)),
              CircleAvatar(radius: wi(7), backgroundColor: Colors.grey),
            ],
          ),
          SizedBox(height: he(65)),
          Center(
              child: Textwidgest(
            text: 'Kodni qaytadan yuborish (0:59)',
            size: wi(17),
            color: Colors.grey,
          ))
        ],
      ),
    );
  }
}
