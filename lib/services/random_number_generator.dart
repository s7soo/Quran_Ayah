import 'dart:math';
class RandomNumberGenerator {
  int randomNumber(int min,int max) {
    Random rnd;
    rnd = Random();
    int ayahNumber = min + rnd.nextInt(max - min);
    print("$ayahNumber is in the range of $min and $max");
    return ayahNumber;
  }
}