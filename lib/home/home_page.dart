import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reading_book/detail_books/detail_book_page.dart';
import 'package:reading_book/home/home_bloc.dart';
import 'package:reading_book/home/home_event.dart';
import 'package:reading_book/home/home_state.dart';
import 'package:reading_book/widget_common/app_bar_base.dart';

import '../widget_common/divider_base.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      builder: (context, homeState) {
        return Scaffold(
          appBar: AppBarBase(
            leadingIcon: IconButton(
              icon: Image.asset("assets/icons/icon_menu.png"),
              onPressed: () {
                log("menu press");
              },
            ),
          ),
          body: Center(
            child: Container(
              color: const Color(0xffFFDD0D),
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                  child: Column(
                    children: <Widget>[
                      const DividerBase(),
                      const SizedBox(height: 10),
                      GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1 / 1.3,
                          mainAxisSpacing: 30,
                          crossAxisSpacing: 20,
                        ),
                        itemCount: 12,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              context.read<HomeBloc>().add(HomeItemBookPressEvent(indexPage: index));
                            },
                            child: Align(
                              child: Container(
                                alignment: Alignment.center,
                                child: Image.asset("assets/images/book$index.png"),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  )),
            ),
          ),
        );
      },
      listener: (context, state) {
        if (state is NavigatorBookPageHomeState) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailBookPage(indexPage: state.indexPage)));
        }
      },
    );
  }
}
