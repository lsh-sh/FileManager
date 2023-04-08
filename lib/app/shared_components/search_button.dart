import 'package:flutter/material.dart';
import 'package:filemanager/app/constans/app_constants.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({Key? key, required this.onPressed}) : super(key: key);

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      child: IconButton(
        onPressed: onPressed,
        icon: const Icon(CustomIcons.search),
        iconSize: 15,
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}
