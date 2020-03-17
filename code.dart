class LearnerMentor {
  String stack;
  String mol;
  bool learner = false;
  bool mentor = false;
  String time;

  addStacks(String stack) {
    List stacks = [];
    stacks.add(stack);
    print(stacks);
  }

  setMentorOrLearner(bool mol) {
    switch (mol) {
      case true:
        learner = true;
        mentor = false;
        print('Learner');
        break;

      case false:
        learner = false;
        mentor = true;
        print('Mentor');
        break;

      default:
        print('Error');
    }
  }

  setAvailableTime(String time) {
    print(time);
  }

  getMentor(String stack, String time) {}
}

void main() {
  LearnerMentor person1 = LearnerMentor();
  person1.addStacks('JavaScript');
  person1.setMentorOrLearner(false);
  person1.setAvailableTime('21.00');

  LearnerMentor person2 = LearnerMentor();
  person2.addStacks('Dart');
  person2.setMentorOrLearner(false);
  person2.setAvailableTime('01.00');

  LearnerMentor person3 = LearnerMentor();
  person3.addStacks('Go');
  person3.setMentorOrLearner(false);
  person3.setAvailableTime('11.00');
}
