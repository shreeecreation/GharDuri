import 'package:flutter/material.dart';
import 'package:ghardhuri/src/app/screens/Questions/All%20Questions/allquestions.dart';
import 'package:ghardhuri/src/core/themes/appcolors.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

class Question2Table extends StatefulWidget {
  final question;

  const Question2Table({Key? key, required this.question}) : super(key: key);

  @override
  Question2TableState createState() => Question2TableState();
}

class Question2TableState extends State<Question2Table> {
  final List<TableData> _tableDataList = []; // List to store table data

  @override
  void initState() {
    super.initState();
    _tableDataList.add(TableData(widget.question.questions));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _tableDataList.length,
            itemBuilder: (context, index) {
              return _buildTable(_tableDataList[index]);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _tableDataList.add(TableData(widget.question.questions));
                  });
                },
                icon: const Icon(Icons.add_circle_rounded, color: AppColors.primary),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTable(TableData tableData) {
    return Column(
      children: [
        Table(
          border: TableBorder.all(color: AppColors.primary, borderRadius: BorderRadius.circular(12)),
          children: [
            TableRow(
              children: [
                for (int index = 0; index < widget.question.questions.length; index++)
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(widget.question.questions[index]),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
            TableRow(
              children: [
                for (int index = 0; index < widget.question.questions.length; index++)
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                            child: TextField(
                              controller: tableData.textEditingControllers[index],
                              decoration: const InputDecoration(border: InputBorder.none, focusedBorder: InputBorder.none, hintText: ''),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class TableData {
  List<String> selectedOptions = [];
  List<int> answerIndexes = [];
  List<TextEditingController> textEditingControllers = [];

  TableData(List<String> questions) {
    selectedOptions = List<String>.filled(questions.length, "");
    answerIndexes = List<int>.filled(questions.length, -1);
    textEditingControllers = List<TextEditingController>.generate(questions.length, (index) => TextEditingController());
  }
}

class TableQuestion2Card extends StatefulWidget {
  final question; // Update the type to ExpandedQuestionModel

  const TableQuestion2Card({Key? key, required this.question}) : super(key: key);

  @override
  TableQuestion2CardState createState() => TableQuestion2CardState();
}

class TableQuestion2CardState extends State<TableQuestion2Card> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        color: const Color(0xFFF1F1F1),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Column(
                children: [
                  Text(
                    widget.question.questionName,
                    style: AppStyles.text18PxBold,
                  ),
                  Question2Table(
                    question: AllQuestions.tabQuestion,
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
