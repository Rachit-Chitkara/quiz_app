import 'question.dart';

class QuizBrain {
  int _questionno = 0;

  List<Question> _questionBank = [
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question('Sun rises from the west', false),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question('A slug\'s blood is green', true),
    Question('India has 29 states', true),
    Question('The moon is just 50% of the mass of Earth', false),
    Question('There are five zeros in one hundred thousand', true),
  ];
  void nextQuestion() {
    if (_questionno < _questionBank.length - 1) _questionno++;
  }

  String getQuestionText() {
    return _questionBank[_questionno].questionText;
  }

  bool getAnswer() {
    return _questionBank[_questionno].questionAnswer;
  }

  bool isFinished() {
    if (_questionno >= _questionBank.length - 1)
      return true;
    else
      return false;
  }

  void reset() {
    _questionno = 0;
  }
}
