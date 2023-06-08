class TableQuestionModel {
  String questionName;
  List<String> answer = ["छ", "छैन"];
  List<String> disease = ["क्यान्सर", "मधुमेह(चिनिरोग)"];
  String secondQuestion = "यदि छ भने कतिजनाको मृत्यु भएको थियो र के कारणबाट मृत्यु भएको थियो ?";
  TableQuestionModel(this.questionName);
}
