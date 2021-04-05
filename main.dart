import 'dart:io';
import 'dart:math';
int rollndice() => Random().nextInt(6);
void main() {
  int userTotal = 0;
  int compTotal = 0;
  int userDiceNum = 0;
  int compDiceNum = 0;
  while (true) {
    stdout.write("თამაშის გასაგრძელებლად გამოიყენეთ ნებისმიერი ღილაკი , დასასრულებლად x ________  :");
    if (stdin.readLineSync() == "x")
      break;
    compDiceNum = rollndice() + rollndice();
    userDiceNum = rollndice() + rollndice();
    print("you -> "
        "$userDiceNum");
    print("computer -> "
        "$compDiceNum");
     (compDiceNum < userDiceNum) ? userTotal++ : compTotal++ ;
  }
  if (compTotal < userTotal) {
    print("გილოცავთ, თქვენ მოიგეთ თამაში!");
  } else if (compTotal > userTotal) {
    print("მოგებულია კომპიუტერი!");
  } else {
    print("თამაში დასრულდა ფრედ!");
  }
  print("You : $userTotal" " " " VS"   " Computer : $compTotal");
}