import 'package:dotindicator/views/first_page_view.dart';
import 'package:dotindicator/views/fourth_page_view.dart';
import 'package:dotindicator/views/second_page_view.dart';
import 'package:dotindicator/views/third_page_view.dart';
import 'package:flutter/material.dart';

class DotIndicatorView extends StatefulWidget {
  const DotIndicatorView({super.key});

  @override
  State<DotIndicatorView> createState() => _DotIndicatorViewState();
}

class _DotIndicatorViewState extends State<DotIndicatorView> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: controller,
              children: const [
                FirstView(),
                SecondView(),
                ThirdView(),
                FourthView(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
