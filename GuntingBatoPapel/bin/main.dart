import 'dart:io';
import 'dart:math';


String getPlayerMove() {
  print("P-apel, G-unting, B-ato");
  String selection = stdin.readLineSync().toUpperCase();

  switch (selection) {
    case "B":
      return "Bato";
      break;
    case "G":
      return "Gunting";
      break;
    case "P":
      return "Papel";
      break;
    default:
      return "Quit";
      break;
  }
}


String getOponentMove() {
  Random rand = new Random();
  int move = rand.nextInt(3);

  switch (move) {
    case 0:
      return "Papel";
      break;
    case 1:
      return "Gunting";
      break;
    case 2:
      return "Bato";
      break;
    default:
      break;
  }
}


String whoWon(String playerMove, String oponentMove) {
  if (playerMove == oponentMove) {
    return "Tie";
  } else if (playerMove == "Bato" && oponentMove == "Gunting") {
    return "You win!";
  } else if (playerMove == "Gunting" && oponentMove == "Papel") {
    return "You win!";
  } else if (playerMove == "Papel" && oponentMove == "Bato") {
    return "You win!";
  } else {
    return "You lose";
  }
}

void main() {
  while(true) {
    print("Papel, Gunting, Bato! What's your pick?");
    String playerMove = getPlayerMove();

    if (playerMove == "Quit") {
      return;
    }

    print("You: $playerMove");
    String oponentMove = getOponentMove();
    print("Bot: $oponentMove");
    print(whoWon(playerMove, oponentMove));
  }
}
