class Question {
  final int id;
  final int answer;
  final String question;
  final List<String> options;

  Question({
    this.id,
    this.question,
    this.answer,
    this.options,
  });
}

const List sample_data = [
  {
    'id': 1,
    'question': 'Some cats are actually allergic to humans',
    'answer': 1,
    'options': ['True', 'False']
  },
  {
    'id': 2,
    'question': 'Some cats are actually allergic to humans',
    'answer': 1,
    'options': ['True', 'False']
  },
  {
    'id': 3,
    'question': 'Some cats are actually allergic to humans',
    'answer': 1,
    'options': ['True', 'False']
  },
  {
    'id': 4,
    'question': 'Some cats are actually allergic to humans',
    'answer': 1,
    'options': ['True', 'False']
  },
  {
    'id': 5,
    'question': 'Some cats are actually allergic to humans',
    'answer': 1,
    'options': ['True', 'False']
  }
];
