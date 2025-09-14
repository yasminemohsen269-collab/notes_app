import 'package:flutter/material.dart';
import 'package:notesapp/utils/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        cursorColor: AppColor.KPraimaryColor,
        decoration: InputDecoration(
          hintText: "title",
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
