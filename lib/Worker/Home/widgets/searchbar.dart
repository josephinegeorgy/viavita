import 'package:flutter/material.dart';
import 'package:viavita/CommonWidgets/colors.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 60,
      child: TextFormField(
         decoration: InputDecoration(
    hintText: "Search here...",
    hintStyle:  TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.captionColor,
                      ),
    // contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    prefixIcon:Image.asset(
      "assets/search_icon.png",
     scale: 5,
    ),
    suffixIcon: Image.asset(
      "assets/filter_icon.png",
     scale: 5,
    ),

    filled: true,
    fillColor: AppColors.textfieldbg,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
    ),
  ),
      ),
    );
  }
}