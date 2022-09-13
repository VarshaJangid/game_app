import 'package:flutter/material.dart';

import 'game_web_view.dart';
import 'game_model.dart';

class GameWidget extends StatelessWidget {
  final GameModel gameModel;

  const GameWidget({
    Key? key,
    required this.gameModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => GameWebView(gameURL: gameModel.gameUrl)),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(gameModel.thumbnailUrl),
              ),
            ),
          ),
          const SizedBox(width: 20),
          SizedBox(
            width: MediaQuery.of(context).size.width * .59,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${gameModel.gameTitle}\n",
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: const BoxDecoration(color: Colors.blueGrey),
                      child: Text(
                        gameModel.gameType,
                        style:
                            const TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Text(
                  gameModel.gameDesc,
                  style: const TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GameSubWidget extends StatelessWidget {
  final GameModel gameModel;

  const GameSubWidget({
    Key? key,
    required this.gameModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => GameWebView(gameURL: gameModel.gameUrl)),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(gameModel.thumbnailUrl),
                ),
              ),
            ),
            Text(
              "${gameModel.gameTitle}\n",
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
