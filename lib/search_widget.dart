import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key, required this.onChanged}) : super(key: key);
  final Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 274,
      height: 36,
      padding: const EdgeInsets.only(left: 13),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17.5),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            suffixIcon: Container(
              width: 51,
              height: 35,
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(17.5),
              ),
            ),
            enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
            focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
            contentPadding: EdgeInsets.zero,
            hintText: 'Search',
            border: const OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}
