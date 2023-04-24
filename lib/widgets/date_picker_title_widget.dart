import 'package:cr_calendar_example/res/colors.dart';
import 'package:cr_calendar_example/utills/constants.dart';
import 'package:cr_calendar_example/utills/extensions.dart';
import 'package:flutter/material.dart';


/// В методе build создается контейнер, в котором отображается текст созданной события.
/// Константа kMonthFormatWidthYear, которая определяет формат даты (например, "April 2023").
///
/// Затем этот текст отображается в виде текстового виджета с помощью Text,
/// настраиваемого с использованием нескольких свойств стиля (размер шрифта, цвет и жирность).

class DatePickerTitle extends StatelessWidget {
  const DatePickerTitle({
    required this.date,
    super.key,
  });

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 16),
        alignment: Alignment.centerLeft,
        child: Text(
          date.format(kMonthFormatWidthYear),
          style: const TextStyle(
            fontSize: 21,
            color: violet,
            fontWeight: FontWeight.w500,
          ),
        ));
  }
}
