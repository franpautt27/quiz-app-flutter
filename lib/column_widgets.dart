import 'package:flutter/widgets.dart';
import 'package:quiz_app/custom_button.dart';
import 'package:quiz_app/custom_text.dart';
import 'package:quiz_app/home_image.dart';

class ColumnWidgets extends StatelessWidget {
  const ColumnWidgets( this.startQuiz, {Key? key}) : super(key: key);
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children:  [
        const Opacity(opacity: 0.6 ,child: HomeImage(),),
        const SizedBox(
          height: 80,
        ),
        const CustomText("Learn flutter the fun way!"),
        const SizedBox(
          height: 20,
        ),
        CustomButton("Start Quiz", startQuiz),
      ],
    );
  }
}
