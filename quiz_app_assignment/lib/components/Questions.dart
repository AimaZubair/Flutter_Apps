class Question {
  final int id;
  final int answer;
  final String question;
  final List<String> options;

  Question({
    this.id,
    this.question,
    this.options,
    this.answer,
  });
}

const List sample_data = [
  {
    'id': 1,
    'question': 'Some cats are actually allergic to humans',
    'options': ['True', 'False'],
    'answer_index': 0,
  },
  {
    'id': 2,
    'question': 'Some cats are actually allergic to humans',
    'options': ['True', 'False'],
    'answer_index': 1,
  },
  {
    'id': 3,
    'question': 'Some cats are actually allergic to humans',
    'options': ['True', 'False'],
    'answer_index': 1,
  },
  {
    'id': 4,
    'question': 'Some cats are actually allergic to humans',
    'options': ['True', 'False'],
    'answer_index': 1,
  },
  {
    'id': 5,
    'question': 'Some cats are actually allergic to humans',
    'options': ['True', 'False'],
    'answer_index': 1,
  }
];
