class Question {
  String _text;
  bool _correctAnswer;

  Question(String text, bool correctAnswer) {
    this._text = text;
    this._correctAnswer = correctAnswer;
  }

  String getText() {
    return this._text;
  }

  bool getCorrectAnswer() {
    return this._correctAnswer;
  }
}
