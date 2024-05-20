import 'package:flutter/material.dart';

import '../../models/test_results_model.dart';
import '../../theme/constants/constants.dart';
import '../../theme/constants/types.dart';
import '../../theme/scores/radial.dart';
import 'test_table.dart';

class TestResultsWidget extends StatelessWidget {
  final List<TestAnswerModel> answers;
  final int correctAnswers;
  final int incorrectAnswers;
  const TestResultsWidget({
    required this.answers,
    required this.correctAnswers,
    required this.incorrectAnswers,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final percent = correctAnswers == 0 && incorrectAnswers == 0
        ? 0.0
        : double.parse((correctAnswers / (correctAnswers + incorrectAnswers))
            .toStringAsPrecision(2));
    final score = correctAnswers == 0 && incorrectAnswers == 0
        ? 0.0
        : (correctAnswers / (correctAnswers + incorrectAnswers) * 100).round();

    final fillColor = percent < 0.5
        ? TopGColors.yRed
        : percent < 0.85
            ? TopGColors.yYellow
            : TopGColors.yGreen;
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
                width: 70,
                child: Center(
                  child: RadialScoreWidget(
                    fillColor: Colors.transparent,
                    freeColor: TopGType.regular.resolveColor(context),
                    lineColor: fillColor,
                    child: Text(
                      '$score%',
                      style: TextStyle(color: fillColor, fontSize: 20),
                    ),
                    lineWidth: 4,
                    percent: percent,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const TestTableRow(
                cells: [
                  Text(
                    'Номер вопроса',
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Выбранный ответ',
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Правильный ответ',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              for (final answer in answers)
                TestTableRow(
                  cells: [
                    Text(
                      answer.question,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      answer.answer,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      answer.correctAnswer,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
