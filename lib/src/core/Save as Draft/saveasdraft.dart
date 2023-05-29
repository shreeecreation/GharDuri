import 'dart:convert';
import 'dart:io';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/familyNo.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ghardhuri/src/app/screens/Questions/domain/questions_domain.dart';

void saveAsDraft() async {
  print(FamilyNumber.familyNumber);
  String fileName = '${FamilyNumber.familyNumber}.json';

  // Get the documents directory path
  Directory documentsDir = await getApplicationDocumentsDirectory();
  String documentsPath = documentsDir.path;

  // Create the file path
  String filePath = '$documentsPath/$fileName';

  // Convert AnswerModel to JSON string
  String jsonStr = jsonEncode(QuestionsDomain.myData.toJson());

  try {
    // Write JSON string to file
    File file = File(filePath);
    await file.writeAsString(jsonStr);
    print('Draft saved successfully to $filePath');
  } catch (error) {
    print('Error saving draft: $error');
  }
}
