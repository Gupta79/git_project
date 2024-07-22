class QuizQuestion {
  const QuizQuestion(this.question, this.answers);
  final String question;
  final List<String> answers;

  get options => null;

  List<String> getShuffledAnswer() {
    final List<String> shuffledList = List.from(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}