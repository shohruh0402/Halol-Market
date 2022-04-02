import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:halolfarm/constant/widgets/widgets.dart';
import 'package:halolfarm/screens/pages/translate_page.dart';
import 'package:halolfarm/sizeconfige/sizeconfig.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.green,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            automaticallyImplyLeading: false,
            expandedHeight: he(206),
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  SizedBox(height: he(28)),
                  GestureDetector(
                    child: Image.asset(
                      'assets/images/halolrasm.png',
                      height: he(29),
                      width: wi(100),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ChangeLan(),
                        ),
                      );
                    },
                  ),
                  Textwidgest(
                    text: 'Balansingiz',
                    size: wi(14),
                    color: Colors.white70,
                    top: 32,
                  ),
                  SizedBox(height: he(11)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.add_circle_outline_sharp,
                        color: Colors.white,
                        size: he(26),
                      ),
                      SizedBox(
                        width: wi(10),
                      ),
                      Textwidgest(
                        text: '450 000 ',
                        size: wi(26),
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                      Textwidgest(
                        text: 'so’m',
                        size: wi(14),
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Textwidgest(
                    text: 'Hisobni to’ldirish uchun ID: 255 584 789',
                    size: wi(16),
                    color: Colors.white54,
                    top: 15,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFF2F1F7),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(he(20)))),
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: wi(8), right: wi(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: he(24),
                    ),
                    Textwidgest(
                      left: 10,
                      text: 'Mening hayvonlarim (2)',
                      size: wi(24),
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      height: he(24),
                    ),
                    Container(
                      height: 900,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(wi(20)))),
                      child: Padding(
                        padding: EdgeInsets.all(he(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Textwidgest(
                              text: '2. Hisori qo’y (№365)',
                              size: wi(20),
                              fontWeight: FontWeight.w700,
                            ),
                            SizedBox(height: he(16)),
                            Container(
                              width: wi(319),
                              height: he(194),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                            SizedBox(height: he(12)),
                            Visibility(
                              visible: true,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(bottom: he(15)),
                                        child: Icon(
                                            Icons.add_circle_outline_rounded),
                                      ),
                                      SizedBox(width: wi(14)),
                                      Textwidgest(
                                        text:
                                            'Qo’ylar orasida oq mushak kasalligi\ntarqayapti.',
                                        size: wi(17),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: he(16)),
                                  Container(
                                    height: he(46),
                                    width: wi(319),
                                    decoration: BoxDecoration(
                                        border: Border.all(width: wi(1.0)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(wi(8)))),
                                    child: Center(
                                      child: Textwidgest(
                                        text: 'Dori sotib olish',
                                        size: wi(15),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: he(20),
                            ),
                            SizedBox(
                              height: he(100),
                              width: double.infinity,
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: he(10),
                                      ),
                                      Textwidgest(
                                        text: 'Yetilish ko’rsatkichi',
                                        size: wi(18),
                                        fontWeight: FontWeight.w600,
                                      ),
                                      SizedBox(
                                        height: he(12),
                                      ),
                                      Textwidgest(
                                        text:
                                            'Taxminiy yetilish sanasi:\n22-aprel, 2022-yil',
                                        size: wi(14),
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    right: 0,
                                    child: Container(
                                      height: he(100),
                                      width: wi(74),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: wi(1.0), color: Colors.grey),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            wi(10),
                                          ),
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            bottom: 2,
                                            left: 2.5,
                                            child: Container(
                                              height: he(54),
                                              width: wi(68),
                                              decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                    wi(10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Textwidgest(
                              text: 'Yemishlari (2)',
                              size: wi(18),
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: he(10)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                    radius: he(27),
                                    backgroundImage: AssetImage(
                                        'assets/images/Ellipse 4.png')),
                                Column(
                                  children: [
                                    Textwidgest(
                                      text: 'Beda (58%)',
                                      size: wi(18),
                                      fontWeight: FontWeight.w600,
                                    ),
                                    SizedBox(height: he(16)),
                                    Container(
                                      height: he(10),
                                      width: wi(237),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: wi(1.0), color: Colors.grey),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            wi(10),
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: wi(90),
                                            height: he(10),
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  wi(10),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: he(25)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: he(27),
                                  backgroundImage: AssetImage(
                                      'assets/images/Ellipse 4 (1).png'),
                                ),
                                Column(
                                  children: [
                                    Textwidgest(
                                      text: 'Bug’doy (8%)',
                                      size: wi(18),
                                      fontWeight: FontWeight.w600,
                                    ),
                                    SizedBox(height: he(16)),
                                    Container(
                                      height: he(10),
                                      width: wi(237),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: wi(1.0), color: Colors.grey),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            wi(10),
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: wi(30),
                                            height: he(10),
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  wi(10),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
