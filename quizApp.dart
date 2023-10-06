import 'dart:io';
import 'dart:math';

class QuizApp {
  List<int> randomNoList = [];
  // Below is the database of all Questions
  final List<Map<String, String>> quizData = [
    {"What is the capital of Pakistan?": "Islamabad"},
    {"What is the capital of England?": "London"},
    {"What is the capital of Sri Lanka?": "Colombo"},
    {"What is the national sport of Pakistan?": "Hockey"},
    {"What is the national sport of England?": "Cricket"},
    {"What is the national animal of Pakistan?": "Markhor"},
    {"What is the national animal of Australia?": "Kangaroo"},
    {"What is the national language of Pakistan?": "Urdu"},
    {"Which fruit is the king of fruits?": "Mango"},
    {"Which animal is the king of animals?": "Lion"},
    {"Which is the largest desert of Pakistan?": "Thar"},
    {"Which is the longest river in the World?": "Nile"},
    {"What is the feminine of Tiger?": "Tigress"},
    {"What is the masculine of Cow?": "Bull"},
    {"What is the feminine of Lion?": "Lioness"},
    {"In which city Minar e Pakistan is located?": "Lahore"},
    {"In which country Eifel Tower is located?": "France"},
    {"In which city Quaid e Azam Tomb is located?": "Karachi"},
    {"What is the most populous country in Asia?": "China"},
    {"In which continent Pakistan is located?": "Asia"},
    {"How many continents are there in the world?": "7"},
    {"How many oceans are there in the world?": "5"},
    {"How many planets are there in our Solar system?": "8"},
    {"How many moons does saturn have?": "145"},
    {"What is the largest province in Pakistan by area?": "Balochistan"},
    {"What is the only Prime Even number?": "2"},
    {"What is the fastest land animal on Earth?": "Cheetah"},
    {"What is the largest organ of human body?": "Skin"},
    {"What is the Holy book of Islam?": "Quran"},
    {"What is the largest country in the World by area?": "Russia"},
    {"What is the national flower of Pakistan?": "Jasmine"},
    {"What is the capital of England?": "London"},
    {"What is the chemical symbol of Silver?": "Ag"},
    {"What is the chemical symbol of Magnesium?": "Mg"},
    {"What is the chemical symbol of Hydrogen?": "H"},
    {"What is the smallest planet of our Solar System?": "Mercury"},
    {"What is the current largest living bird?": "Ostrich"},
    {"What is the year of Pakistan Independence?": "1947"},
    {"How many centimeters are ther in 1 meter?": "100"},
    {"How many grams are ther in 1 kilogram?": "1000"},
  ];

  void run() {
    while (true) {
      randomGenerator(randomNoList);
      int score = accessingData(randomNoList, quizData);
      double percentage = (score / randomNoList.length) * 100;

      print("Your Final score: $score/${randomNoList.length} ($percentage%)");

      if (percentage > 50.0) {
        print("Congratulations! You have passed.");
      } else {
        print("Bad luck this time. You can always TRY AGAIN !!");
      }

      stdout.write("Do you want to retry? (Yes or No): ");
      String retryInput = stdin.readLineSync()?.toLowerCase() ?? "";

      if (retryInput != "Yes") {
        break;
      }
    }
  }

  // Generating any 20 random numbers less than 40
  void randomGenerator(List<int> randomNoList) {
    for (int i = 1; i <= 20; i++) {
      int max = 40;
      int randomNumber = Random().nextInt(max) + 1;
      randomNoList.add(randomNumber);
    }
  }

  // With that 20 random generated Nos. accessing random 20 Qs from database
  int accessingData(
      List<int> randomNoList, List<Map<String, String>> quizData) {
    int score = 0;
    for (int i = 0; i < randomNoList.length; i++) {
      var accessingVariable = randomNoList[i] - 1;
      var question = quizData[accessingVariable].keys.first;
      var answer = quizData[accessingVariable].values.first;

      print("Question ${i + 1}: $question");
      stdout.write("Your answer: ");
      String userInput = stdin.readLineSync() ?? "";

      if (userInput.toLowerCase() == answer.toLowerCase()) {
        print("Correct!");
        score++;
      } else {
        print("Incorrect. The correct answer is: $answer");
      }
    }
    return score;
  }
}

void main() {
  print("""Welcome to Noor's Quiz Console App.
  You will be asked 20 Random Questions.""");
  QuizApp quizApp = QuizApp();
  quizApp.run();
}

// ------------ Assignment # 06 ------- 07 October 2023 ------------- //

// -------------------------- Alhum'dulillah ------------------------ //