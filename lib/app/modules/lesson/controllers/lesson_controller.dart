import 'package:get/get.dart';

import '../../../data/models/lesson.dart';

class LessonController extends GetxController {
  //TODO: Implement LessonController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    init();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  List<Lesson> lessons = [];

  void init() {
    lessons.add(
      Lesson(
          lessonNo: 1,
          lessonName: 'ENGLISH Lesson 1',
          lessonContent: """Pete: Hi! Are you Anna?
Anna: Yes! Hi there! Are you Pete?
Pete: I am Pete.
Anna: Nice to meet you.
Anna: Let's try that again. I'm Anna. Nice to meet you.
Pete: I'm Pete. "Anna" Is that A-N-A?
Anna: No. A-N-N-A
Pete: Well, Anna with two "n's" ... Welcome to ... 1400 Irving Street!
Anna: My new apartment! Yes!""",
          language: 'ENGLISH'),
    );
    lessons.add(Lesson(
        lessonNo: 2,
        lessonName: 'ENGLISH Lesson 2',
        lessonContent: """ Jonathan: Hey, Pete! Who’s your friend?
Pete: She is Anna. She is new to D.C.
Jonathan: Where are you from?
Anna: I am from a small town.
Jonathan: Well, welcome to D.C.
Anna: Thank you.
Jonathan: I am Jonathan. I am in apartment B4.
Anna: I am in apartment C2. Marsha is my roommate.
Jonathan: I know Marsha. She is nice.
Pete: And I am in Apartment D7. I have to go now.
Anna: Oh!
Pete: Remember to call Marsha at work. Tell her you’re here.
Anna: Right, thanks, Pete. Nice to meet you!
Jonathan: You too, Bye.
Anna: Apartment C2, here I come! """,
        language: 'ENGLISH'));
    lessons.add(Lesson(
        lessonNo: 1,
        lessonName: 'MARATHI Lesson 1',
        lessonContent: """Pete: Hi! Are you Anna?
Anna: Yes! Hi there! Are you Pete?
Pete: I am Pete.
Anna: Nice to meet you.
Anna: Let's try that again. I'm Anna. Nice to meet you.
Pete: I'm Pete. "Anna" Is that A-N-A?
Anna: No. A-N-N-A
Pete: Well, Anna with two "n's" ... Welcome to ... 1400 Irving Street!
Anna: My new apartment! Yes!""",
        language: 'MARATHI'));
    lessons.add(
      Lesson(
          lessonNo: 2,
          lessonName: 'MARATHI Lesson 2',
          lessonContent: """Pete: Hi! Are you Anna?
Anna: Yes! Hi there! Are you Pete?
Pete: I am Pete.
Anna: Nice to meet you.
Anna: Let's try that again. I'm Anna. Nice to meet you.
Pete: I'm Pete. "Anna" Is that A-N-A?
Anna: No. A-N-N-A
Pete: Well, Anna with two "n's" ... Welcome to ... 1400 Irving Street!
Anna: My new apartment! Yes!""",
          language: 'MARATHI'),
    );
  }

  List<Lesson> getAllLessons() {
    return lessons;
  }

  List<Lesson> getLessonsForLang(String language) {
    List<Lesson> lessons = [];
    for (var element in this.lessons) {
      if (element.language == language) {
        lessons.add(element);
      }
    }
    return lessons;
  }

  Lesson? getLessonForLang(String language, int lessonNo) {
    for (var element in lessons) {
      if (element.language == language && element.lessonNo == lessonNo) {
        return element;
      }
    }
    return null;
  }
}
