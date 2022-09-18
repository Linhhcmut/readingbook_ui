import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reading_book/detail_books/detail_book_bloc.dart';
import 'package:reading_book/detail_books/detail_book_event.dart';
import 'package:reading_book/detail_books/detail_book_state.dart';
import 'package:reading_book/detail_books/widgets/contain.dart';
import 'package:reading_book/detail_books/widgets/info_book.dart';
import 'package:reading_book/widget_common/app_bar_base.dart';
import 'package:reading_book/widget_common/text_base.dart';
import '../widget_common/divider_base.dart';

class DetailBookPage extends StatelessWidget {
  final int indexPage;
  const DetailBookPage({super.key, required this.indexPage});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DetailBookBloc, DetailBookState>(
      builder: (context, detailState) {
        return Scaffold(
          appBar: AppBarBase(
            leadingIcon: IconButton(
              icon: Image.asset("assets/icons/back_icon.png"),
              onPressed: () {
                context.read<DetailBookBloc>().add(BackButtonPressEvent());
              },
            ),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 250,
                  color: const Color(0xffFFDD0D),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        const DividerBase(),
                        const SizedBox(height: 10),
                        InfoBoxDetailPage(indexPage: indexPage),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 7),
                      child: NotificationListener<OverscrollIndicatorNotification>(
                        onNotification: (overscroll) {
                          overscroll.disallowIndicator();
                          return true;
                        },
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: TextBase(text: introBook, size: 15, color: 0xff4F565D, fontFamily: "Roboto", fontWeight: FontWeight.w600),
                        ),
                      )),
                ),
              ],
            ),
          ),
        );
      },
      listener: (context, state) {
        if (state is BackButtonDetailBookState) {
          Navigator.pop(context);
        }
      },
    );
  }
}
