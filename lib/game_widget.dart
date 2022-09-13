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
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GameWebView(gameURL: gameModel.gameUrl),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .13,
            width: MediaQuery.of(context).size.width * .245,
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
            width: MediaQuery.of(context).size.width -
                MediaQuery.of(context).size.width * .43,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .3,
                      child: Text(
                        "${gameModel.gameTitle}\n",
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: MediaQuery.of(context).size.width * .25,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: const BoxDecoration(color: Colors.blueGrey),
                      child: Center(
                        child: Text(
                          gameModel.gameType,
                          style: const TextStyle(
                              fontSize: 15, color: Colors.white),
                          overflow: TextOverflow.fade,
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  gameModel.gameDesc,
                  style: const TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                  maxLines: 4,
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
