import 'package:flutter/material.dart';

import '/game_widget.dart';
import 'game_model.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GameState();
}

class _GameState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Game App")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            GameWidget(
              gameModel: GameModel(
                gameUrl: "https://play.gamepix.com/ludo-fever/embed?sid=1",
                thumbnailUrl:
                    "https://games.assets.gamepix.com/VD843/thumbnail/small.png",
                gameTitle: "Ludo Fever",
                gameDesc: desc1,
                gameType: "Board",
              ),
            ),
            const SizedBox(height: 10),
            const Divider(thickness: 1),
            const SizedBox(height: 10),
            GameWidget(
              gameModel: GameModel(
                gameTitle: "Super Tank Battle",
                gameDesc: desc2,
                gameUrl:
                    "https://play.gamepix.com/super-tank-battle/embed?sid=1",
                thumbnailUrl:
                    "https://games.assets.gamepix.com/TU424/thumbnail/small.png",
                gameType: "Arcade",
              ),
            ),
            const SizedBox(height: 10),
            const Divider(thickness: 1),
            const SizedBox(height: 10),
            GameWidget(
              gameModel: GameModel(
                gameTitle: "Cut the Rope 2",
                gameDesc: desc2,
                gameUrl: "https://play.gamepix.com/cut-the-rope-2/embed?sid=1",
                thumbnailUrl:
                    "https://games.assets.gamepix.com/40214/thumbnail/small.png",
                gameType: "Adventure",
              ),
            ),
            const SizedBox(height: 10),
            const Divider(thickness: 1),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GameSubWidget(
                  gameModel: GameModel(
                    gameTitle: "Cut The Rope",
                    gameUrl:
                        "https://play.gamepix.com/cut-the-rope/embed?sid=1",
                    thumbnailUrl:
                        "https://games.assets.gamepix.com/40071/thumbnail/small.png",
                    gameDesc: "",
                    gameType: "",
                  ),
                ),
                GameSubWidget(
                  gameModel: GameModel(
                    gameTitle: "Big Shark",
                    gameUrl: "https://play.gamepix.com/big-shark/embed?sid=1",
                    thumbnailUrl:
                        "https://games.assets.gamepix.com/S11I6/thumbnail/small.png",
                    gameDesc: "",
                    gameType: "",
                  ),
                ),
                GameSubWidget(
                  gameModel: GameModel(
                    gameTitle: "Jet Micky",
                    gameUrl: "https://play.gamepix.com/jet-micky/embed?sid=1",
                    thumbnailUrl:
                        "https://games.assets.gamepix.com/KEIJ8/thumbnail/small.png",
                    gameDesc: "",
                    gameType: "",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String desc1 =
      "Destroy enemy tokens in this modern Ludo. Play it alone, or with friends and family on one device. Roll the dice and go through the entire playing field with all the tokens. Will you come to the home area first?";
  String desc2 =
      "On Console Tank Battle is very Classical game. Super Tank Battle is a modern style Tank Battle Game with new attractive elements and 500 build-in maps, you no longer need to play on Emulator anymore. This is the game of modern war, please boom the map, summon your alliance, and strike the Enemy! Clash It! Prepare the tank battle, prepare the tank modern city war! There are 5 different difficulty levels (from easy to crazy). It should meet different people need. Game Rule 101: - Defence your base, and destroy all enemy tanks - If your tank or your base is destroyed, it will be game over. Features: - have 500 Maps can be played - helper tank (summon alliance), it is like a 2nd player to help you (Computer AI control) - special items in game - classical tank battle game's style - 20 enemy tanks per map";
}
