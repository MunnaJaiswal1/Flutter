import 'question.dart';

class QuizBrain{

  int _questionNumber=0;

  List<Question> _questionBank=[
    Question('Sharks are mammals.',false),
    Question('Sea otters have a favorite rock they use to break open food.',true),
    Question('The blue whale is the biggest animal to have ever lived.',true),
    Question('Sharks are mammals.',false),
    Question('Sea otters have a favorite rock they use to break open food.',true),
    Question('The blue whale is the biggest animal to have ever lived.',true),
    Question('The hummingbird egg is the world\'s smallest bird egg.',true),
    Question('Pigs roll in the mud because they don\'t like being clean.',false),
    Question('New York City is composed of between 36 and 42 islands.',true),
    Question('South Africa has one capital.',false),
    Question('The Atlantic Ocean is the biggest ocean on Earth.',false),
    Question('Mount Everest is the tallest mountain in the world.',true),
    Question('You can find the \'Desert of Death\' in California.',false),
    Question('The human body has four lungs.',false),
    Question('Human skin regenerates every week.',false),
    Question('The average human sneeze can be clocked at 100 miles an hour.',true),
    Question('Humans lose an average of 75 strands of hair a month.',false),
    Question('Infants have more bones than adults.',true),
    Question('Aladdin\'s character was based on Brad Pitt.',false),
    Question('The song "We Don\'t Talk About Bruno" from Encanto is the first Disney song to hit #1 on the Billboard Hot 100 chart in 29 years.',true),
    Question('It took eight months from start to finish to produce the 1959 Disney film, Sleeping Beauty.',false),
    Question('Pinocchio was the first animated, full-color Walt Disney feature film.',false),
    Question('Toy Story was Pixar\'s first movie.',true),
    Question('Pepperoni is the most popular pizza topping in the US.',true),
    Question('Cheesecake comes from Italy.',true),
    Question('Pineapples grow on trees.',false),
    Question('A potato was the first vegetable to be planted on the space shuttle.',false),
    Question('Hawaiian pizza comes from Canada.',true),
    Question('The Chinese New Year is celebrated on the same day every year.',false),
    Question('Punxsutawney Phil is just a nickname for the famous groundhog.',true),
    Question('The first St. Patrick\'s Day parade in the United States was held in New York City.',false),
    Question('The tradition of dyeing Easter eggs started in the United States.',false),
    Question('Only two men signed the Declaration of Independence on July 4, 1776.',true),
    Question('Polo takes up the largest amount of space in terms of land area.',true),
    Question('Every golf ball has the same number of dimples.',false),
    Question('Football players started wearing helmets in 1943.',true),
    Question('Brazil is the only nation to have played in every World Cup finals tournament.',true),
    Question('World-renowned jeweler Tiffany & Co. is the maker of the Vince Lombardi trophy.',true),
    Question('President George Washington brought macaroni and cheese to the USA.',false),
    Question('Marvel published its first comic in October 1939.',true),
    Question('The letter "T" is the most common in the English Language.',false),
    Question('People who have chiclephobia are afraid of cats.',false),
    Question('John Glenn became the oldest astronaut when he traveled to space at the age of 53.',false),
  ];
  void nextQuestion() {
    if(_questionNumber< _questionBank.length-1){
      _questionNumber++;
    }

  }
  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }
  bool getCorrectAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }
}