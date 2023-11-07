import 'package:e_book/Pages/BookPage/BookPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../Config/Colors.dart';

class BookActionBtn extends StatelessWidget {
  final String bookUrl;

  const BookActionBtn({super.key, required this.bookUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Get.to(
                BookPage(bookUrl: bookUrl),
              );
            },
            child: Row(
              children: [
                SvgPicture.asset("Assets/Icons/book.svg"),
                SizedBox(width: 10),
                Text("Read Book",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.background,
                          letterSpacing: 1.5,
                        )),
              ],
            ),
          ),
          Container(
            width: 3,
            height: 10,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(10)),
          ),
          Row(
            children: [
              SvgPicture.asset("Assets/Icons/playe.svg"),
              SizedBox(width: 10),
              Text("Play Book",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.background,
                        letterSpacing: 1.5,
                      )),
            ],
          ),
        ],
      ),
    );
  }
}
