import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/utils/app_color.dart';

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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
                setState(() {});
              },
              child: ColorItem(
                color: kColors[index],
                isClickable: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
