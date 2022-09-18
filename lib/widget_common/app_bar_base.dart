import 'dart:developer';
import 'package:flutter/material.dart';

class AppBarBase extends StatelessWidget implements PreferredSizeWidget {
  final IconButton leadingIcon;

  const AppBarBase({super.key, required this.leadingIcon});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xffFFDD0D),
      elevation: 0.0,
      title: const Text(
        "Books",
        style: TextStyle(color: Color(0xff2C2605), fontSize: 20, fontFamily: "Roboto", fontWeight: FontWeight.w700),
      ),
      centerTitle: true,
      leading: leadingIcon,
      actions: [
        IconButton(
          onPressed: () {
            log("search press");
          },
          icon: Image.asset("assets/icons/icon_search.png"),
        )
      ],
    );
  }
}
