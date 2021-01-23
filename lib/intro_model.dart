import 'package:flutter_intro/flutter_intro.dart';
import 'package:flutter/material.dart';

class IntroMoel {
  static Intro getIntro() {
    Intro intro = Intro(
      stepCount: 4,
      widgetBuilder: StepWidgetBuilder.useDefaultTheme(
        texts: [
          'Flutter Introのテストです',
          'なんかメッセージ',
          '＋を押した数',
          '押してみよう！',
        ],
        buttonTextBuilder: (currPage, totalPage) {
          return currPage < totalPage - 1 ? '次' : '終了';
        },
      ),
    );

    // +のとき、サイズが小さいので、大きくする
    intro.setStepConfig(
      3,
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
    );

    return intro;
  }
}
