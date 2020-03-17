class LearnerMentor {
  String stack;
  var stacks = [];
  String mol;
  bool learner = false;
  bool mentor = false;
  String time;

  addStacks(String stack) {
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
    if (this.mentor == true) {
      print(time);
    }
  }

  getMentor(String stack, String time) {}
}

void main() {
  LearnerMentor person1 = LearnerMentor();
  person1.addStacks('JavaScript');
  person1.setMentorOrLearner(false); //Mentor
  person1.setAvailableTime('21.00');

  LearnerMentor person2 = LearnerMentor();
  person2.addStacks('Dart');
  person2.setMentorOrLearner(false); //Mentor
  person2.setAvailableTime('01.00');

  LearnerMentor person3 = LearnerMentor();
  person3.addStacks('Go');
  person3.setMentorOrLearner(true); //Learner
  person3.setAvailableTime('11.00'); //Time not taken as its a learner

  LearnerMentor person4 = LearnerMentor();
  person4.addStacks('Java');
  person4.setMentorOrLearner(true); //Learner
  person4.setAvailableTime('19.00'); //Time not taken as its a learner

  LearnerMentor person5 = LearnerMentor();
  person5.addStacks('Swift');
  person5.setMentorOrLearner(false); //Mentor
  person5.setAvailableTime('07.00');
}
