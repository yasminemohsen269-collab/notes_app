import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isClickable, required this.color});
  final bool isClickable;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isClickable
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(radius: 36, backgroundColor: color),
          )
        : CircleAvatar(radius: 38, backgroundColor: color);
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xff414833),
    Color(0xff737A5D),
    Color(0xffA4AC86),
    Color(0xffCCBFA3),
    Color(0xffEBE3D2),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isClickable: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
