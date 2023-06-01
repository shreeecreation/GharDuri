class AnswerModel {
  String? bastiName;
  String? question1_1;
  String? question1_2;
  int? question2_1;
  int? question2_2;
  List<int>? question3_1;
  List<int>? question3_2;
  int? question4;
  int? question5_1;
  int? question5_2;
  int? question6_1;
  int? question6_2;
  int? question6_3;
  int? question6_4;
  int? question7_1;
  int? question7_2;
  int? question8;
  int? question9;
  int? question10_1;
  int? question10_2;
  int? question11;
  int? question12;
  int? question13;
  int? question14;
  List<int>? question15;
  int? question16;
  int? question17;
  List<int>? question18;
  List<int>? question19;
  int? question20;
  int? question21;
  int? question22;
  int? question23;
  int? question24_1;
  int? question24_2;
  int? question24_3;
  int? question25;
  int? question26;
  int? question27;
  int? question28_1;
  int? question28_2;
  int? question28_3;
  int? question28_4;
  int? question29_1;
  int? question29_2;
  int? question29_3;
  int? question29_4;

  int? qustion29_1_1;
  int? qustion29_1_2;
  int? qustion29_1_3;
  int? qustion29_1_4;

  int? question30_1;
  int? question30_2;
  int? question30_3;
  int? question30_4;

  int? question31_1;
  String? question31_2;
  int? question31_3;
  String? question31_4;

  int? question32;
  int? question33;
  int? question34;

  List<int>? question35;
  int? question36;

  int? question37;

  int? question38_1;

  int? question39;
  int? question40;
  List<int>? question41;
  List<int>? question42;
  int? question43_1;
  int? question43_2;
  int? question44;
  List<int>? question45;
  String? question46_1;
  String? question46_2;
  String? question46_3;
  String? question46_4;
  int? question47;
  int? question48;
  int? question49;
  int? question50;
  String? suchiKarta;

  AnswerModel(
      {this.bastiName,
      this.question1_1,
      this.question1_2,
      this.question2_1,
      this.question2_2,
      this.question3_1,
      this.question3_2,
      this.question4,
      this.question5_1,
      this.question5_2,
      this.question6_1,
      this.question6_2,
      this.question6_3,
      this.question6_4,
      this.question7_1,
      this.question7_2,
      this.question8,
      this.question9,
      this.question10_1,
      this.question10_2,
      this.question11,
      this.question12,
      this.question13,
      this.question14,
      this.question15,
      this.question16,
      this.question17,
      this.question18,
      this.question19,
      this.question20,
      this.question21,
      this.question22,
      this.question23,
      this.question24_1,
      this.question24_2,
      this.question24_3,
      this.question25,
      this.question26,
      this.question27,
      this.question28_1,
      this.question28_2,
      this.question28_3,
      this.question28_4,
      this.question29_1,
      this.question29_2,
      this.question29_3,
      this.question29_4,
      this.qustion29_1_1,
      this.qustion29_1_2,
      this.qustion29_1_3,
      this.qustion29_1_4,
      this.question30_1,
      this.question30_2,
      this.question30_3,
      this.question30_4,
      this.question31_1,
      this.question31_2,
      this.question31_3,
      this.question31_4,
      this.question32,
      this.question33,
      this.question34,
      this.question35,
      this.question36,
      this.question37,
      this.question38_1,
      this.question39,
      this.question40,
      this.question41,
      this.question42,
      this.question43_1,
      this.question43_2,
      this.question44,
      this.question45,
      this.question46_1,
      this.question46_2,
      this.question46_3,
      this.question46_4,
      this.question47,
      this.question48,
      this.question49,
      this.question50,
      this.suchiKarta});

  factory AnswerModel.fromJson(Map<String, dynamic> json) {
    return AnswerModel(
      bastiName: json['bastiName'],
      question1_1: json['question1_1'],
      question1_2: json['question1_2'],
      question2_1: json['question2_1'],
      question2_2: json['question2_2'],
      question3_1: json['question3_1'],
      question3_2: json['question3_2'],
      question4: json['question4'],
      question5_1: json['question5_1'],
      question5_2: json['question5_2'],
      question6_1: json['question6_1'],
      question6_2: json['question6_2'],
      question6_3: json['question6_3'],
      question6_4: json['question6_4'],
      question7_1: json['question7_1'],
      question7_2: json['question7_2'],
      question8: json['question8'],
      question9: json['question9'],
      question10_1: json['question10_1'],
      question10_2: json['question10_2'],
      question11: json['question11'],
      question12: json['question12'],
      question13: json['question13'],
      question14: json['question14'],
      question15: json['question15'],
      question16: json['question16'],
      question17: json['question17'],
      question18: json['question18'],
      question19: json['question19'],
      question20: json['question20'],
      question21: json['question21'],
      question22: json['question22'],
      question23: json['question23'],
      question24_1: json['question24_1'],
      question24_2: json['question24_2'],
      question24_3: json['question24_3'],
      question25: json['question25'],
      question26: json['question26'],
      question27: json['question27'],
      question28_1: json['question28_1'],
      question28_2: json['question28_2'],
      question28_3: json['question28_3'],
      question28_4: json['question28_4'],
      question29_1: json['question29_1'],
      question29_2: json['question29_2'],
      question29_3: json['question29_3'],
      question29_4: json['question29_4'],
      qustion29_1_1: json['qustion29_1_1'],
      qustion29_1_2: json['qustion29_1_2'],
      qustion29_1_3: json['qustion29_1_3'],
      qustion29_1_4: json['qustion29_1_4'],
      question30_1: json['question30_1'],
      question30_2: json['question30_2'],
      question30_3: json['question30_3'],
      question30_4: json['question30_4'],
      question31_1: json['question31_1'],
      question31_2: json['question31_2'],
      question31_3: json['question31_3'],
      question31_4: json['question31_4'],
      question32: json['question32'],
      question33: json['question33'],
      question34: json['question34'],
      question35: json['question35'],
      question36: json['question36'],
      question37: json['question37'],
      question38_1: json['question38_1'],
      question39: json['question39'],
      question40: json['question40'],
      question41: json['question41'],
      question42: json['question42'],
      question43_1: json['question43_1'],
      question43_2: json['question43_2'],
      question44: json['question44'],
      question45: json['question45'],
      question46_1: json['question46_1'],
      question46_2: json['question46_2'],
      question46_3: json['question46_3'],
      question46_4: json['question46_4'],
      question47: json['question47'],
      question48: json['question48'],
      question49: json['question49'],
      question50: json['question50'],
      suchiKarta: json['suchiKarta'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'bastiName': bastiName,
      'question1_1': question1_1,
      'question1_2': question1_2,
      'question2_1': question2_1,
      'question2_2': question2_2,
      'question3_1': question3_1,
      'question3_2': question3_2,
      'question4': question4,
      'question5_1': question5_1,
      'question5_2': question5_2,
      'question6_1': question6_1,
      'question6_2': question6_2,
      'question6_3': question6_3,
      'question6_4': question6_4,
      'question7_1': question7_1,
      'question7_2': question7_2,
      'question8': question8,
      'question9': question9,
      'question10_1': question10_1,
      'question10_2': question10_2,
      'question11': question11,
      'question12': question12,
      'question13': question13,
      'question14': question14,
      'question15': question15,
      'question16': question16,
      'question17': question17,
      'question18': question18,
      'question19': question19,
      'question20': question20,
      'question21': question21,
      'question22': question22,
      'question23': question23,
      'question24_1': question24_1,
      'question24_2': question24_2,
      'question24_3': question24_3,
      'question25': question25,
      'question26': question26,
      'question27': question27,
      'question28_1': question28_1,
      'question28_2': question28_2,
      'question28_3': question28_3,
      'question28_4': question28_4,
      'question29_1': question29_1,
      'question29_2': question29_2,
      'question29_3': question29_3,
      'question29_4': question29_4,
      'qustion29_1_1': qustion29_1_1,
      'qustion29_1_2': qustion29_1_2,
      'qustion29_1_3': qustion29_1_3,
      'qustion29_1_4': qustion29_1_4,
      'question30_1': question30_1,
      'question30_2': question30_2,
      'question30_3': question30_3,
      'question30_4': question30_4,
      'question31_1': question31_1,
      'question31_2': question31_2,
      'question31_3': question31_3,
      'question31_4': question31_4,
      'question32': question32,
      'question33': question33,
      'question34': question34,
      'question35': question35,
      'question36': question36,
      'question37': question37,
      'question38_1': question38_1,
      'question39': question39,
      'question40': question40,
      'question41': question41,
      'question42': question42,
      'question43_1': question43_1,
      'question43_2': question43_2,
      'question44': question44,
      'question45': question45,
      'question46_1': question46_1,
      'question46_2': question46_2,
      'question46_3': question46_3,
      'question46_4': question46_4,
      'question47': question47,
      'question48': question48,
      'question49': question49,
      'question50': question50,
      'suchiKarta': suchiKarta
    };
  }
}
