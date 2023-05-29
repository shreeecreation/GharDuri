import 'dart:io';

import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

void saveAsDraft() {
  String filename = 'draft.txt';
  File file = File(filename);

  // Convert AnswerModel to JSON string
  String jsonStr = QuestionsDomain.myData.toJson().toString();

  // Write JSON string to file
  file.writeAsString(jsonStr).then((_) => print('Draft saved successfully to $filename')).catchError((error) => print('Error saving draft: $error'));
}
