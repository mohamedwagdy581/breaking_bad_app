import 'package:breaking_bad_app/constants/my_colors.dart';
import 'package:breaking_bad_app/data_layer/models/characters.dart';
import 'package:flutter/material.dart';

class CharacterItem extends StatelessWidget {
  final Character character;

  const CharacterItem({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: MyColors.myWhite,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: GridTile(
        footer: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          alignment: Alignment.bottomCenter,
          color: Colors.black54,
          child: Text(
            character.name,
            style: const TextStyle(
              height: 1.3,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: MyColors.myWhite,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
        child: Container(
          color: MyColors.myGrey,
          child: character.image.isNotEmpty
              ? FadeInImage.assetNetwork(
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                  placeholder: 'assets/images/loading.gif',
                  image: character.image)
              : Image.asset(
                  'assets/images/placeholder.png',
                ),
        ),
      ),
    );
  }
}
