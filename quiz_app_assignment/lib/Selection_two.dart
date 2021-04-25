import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:quiz_app_assignment/constant.dart';
import 'package:quiz_app_assignment/components_2/progress_bar_2.dart';
import 'components/AppBar.dart';
import 'components/drawer.dart';
import 'package:get/get.dart';
import 'package:quiz_app_assignment/components_2/controller_2.dart';
import 'package:quiz_app_assignment/components_2/question_card_2.dart';

class MultipleChoice extends StatefulWidget {
  @override
  _MultipleChoiceState createState() => _MultipleChoiceState();
}

class _MultipleChoiceState extends State<MultipleChoice> {
  QuestionController _questionController = Get.put(QuestionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      drawer: drawer(),
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 20.0, bottom: 20.0, right: 20.0),
                  child: ProgressBar(),
                ),
              ],
            ),
          ),
          SizedBox(height: kDefaultPadding),
          Padding(
            padding: const EdgeInsets.only(top: 45.0, left: 20.0),
            child: Obx(
              () => Text.rich(
                TextSpan(
                  text: "Question ${_questionController.questionNumber.value}",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: kSecondaryColor),
                  children: [
                    TextSpan(
                      text: "/${_questionController.questions.length}",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(color: kSecondaryColor),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(thickness: 1.5),
          SizedBox(height: kDefaultPadding),
          Padding(
            padding: EdgeInsets.only(top: 80.0),
            child: Expanded(
              child: PageView.builder(
                // Block swipe to next qn
                physics: NeverScrollableScrollPhysics(),
                controller: _questionController.pageController,
                onPageChanged: _questionController.updateTheQnNum,
                itemCount: _questionController.questions.length,
                itemBuilder: (context, index) => QuestionCard(
                    question: _questionController.questions[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
