import 'package:flutter/material.dart';
import 'package:notesapp/utils/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        cursorColor: AppColor.KPraimaryColor,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: AppColor.KPraimaryColor),
          border: buildborder(),
          enabledBorder: buildborder(),
          focusedBorder: buildborder(AppColor.KPraimaryColor),
        ),
      ),
    );
  }

  OutlineInputBorder buildborder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}
