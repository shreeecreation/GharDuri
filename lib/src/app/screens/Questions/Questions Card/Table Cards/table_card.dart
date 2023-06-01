import 'package:flutter/material.dart';
import 'package:ghardhuri/src/core/themes/appcolors.dart';
import 'package:ghardhuri/src/core/themes/appstyles.dart';

import 'package:ghardhuri/src/app/screens/Questions/Questions%20Utils/question_checkbox.dart';

class Question10Table extends StatefulWidget {
  final question;

  const Question10Table({Key? key, required this.question}) : super(key: key);

  @override
  Question10TableState createState() => Question10TableState();
}

class Question10TableState extends State<Question10Table> {
  final List<TableData> _tableDataList = []; // List to store table data

  @override
  void initState() {
    super.initState();
    _tableDataList.add(TableData()); // Add an initial table data entry
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question.secondQuestion,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
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
                    _tableDataList.add(TableData()); // Add a new table data entry
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
        const SizedBox(height: 10),
        Table(
          border: TableBorder.all(color: AppColors.primary, borderRadius: BorderRadius.circular(12)),
          columnWidths: const {
            0: FixedColumnWidth(150),
            1: FlexColumnWidth(),
          },
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Container(padding: const EdgeInsets.all(8.0), child: Center(child: Text('संख्या', style: AppStyles.text14PxBold))),
                ),
                TableCell(
                  child:
                      Container(padding: const EdgeInsets.all(8.0), child: Center(child: Text('मृत्यु हुनाको कारण ', style: AppStyles.text14PxBold))),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: tableData.textEditingController,
                      decoration: const InputDecoration(border: UnderlineInputBorder(), focusedBorder: UnderlineInputBorder(), hintText: ''),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: widget.question.disease.map<Widget>((option) {
                        final index = widget.question.disease.indexOf(option);

                        return OptionCheckBox(
                          title: option,
                          isChecked: tableData.selectedOption == option,
                          onChanged: (isChecked) {
                            setState(() {
                              tableData.selectedOption = option;
                              tableData.answerIndex = index;
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class TableData {
  String selectedOption = "";
  int answerIndex = -1;
  final TextEditingController textEditingController = TextEditingController();
}

class TableQuestionCard extends StatefulWidget {
  final question; // Update the type to ExpandedQuestionModel

  const TableQuestionCard({Key? key, required this.question}) : super(key: key);

  @override
  TableQuestionCardState createState() => TableQuestionCardState();
}

class TableQuestionCardState extends State<TableQuestionCard> {
  var selectedOption = "";

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
              Text(
                widget.question.questionName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  OptionCheckBox(
                    title: "छ",
                    isChecked: selectedOption == "छ",
                    onChanged: (isChecked) {
                      setState(() {
                        selectedOption = "छ";
                        widget.question.answerIndex = 0;
                      });
                    },
                  ),
                  const SizedBox(width: 30),
                  OptionCheckBox(
                    title: "छैन",
                    isChecked: selectedOption == "छैन",
                    onChanged: (isChecked) {
                      setState(() {
                        selectedOption = "छैन";
                        widget.question.answerIndex = 1;
                      });
                    },
                  ),
                ],
              ),
              if (selectedOption == "छ" && widget.question.questionName != null) const SizedBox(height: 20),
              if (selectedOption == "छ")
                Column(
                  children: [
                    Question10Table(
                      question: widget.question,
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
