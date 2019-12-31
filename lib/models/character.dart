import 'package:flutter/material.dart';

class Character {
  final String name;
  final String imagePath;
  final String description;
  final List<Color> colors;

  Character({this.name, this.imagePath, this.description, this.colors});
}

List characters = [
  Character(
      name: "Kevin",
      imagePath: "assets/images/Kevin_minions.png",
      description:
          "Sir Kevin KBE (formerly known as Kevin) is one of the Minions and the protagonist in the film Minions. Kevin is a tall, two-eyed minion with sprout cut hair and is usually seen wearing his golf apparel. Kevin loves to make fun of and tease people or Minions, shown when he made fun of Jerry and teases him for being a coward. He loves playing golf and cricket. In the film Minions he is the leader of the trio in search of a new master. He truly cares about the well-being of the Minion tribe (which is dependent on them having a proper master).",
      colors: [Colors.orange.shade200, Colors.deepOrange.shade400]),
  Character(
      name: "Agnes",
      imagePath: "assets/images/Agnes_gru.png",
      description:
          "Agnes Gru it is one of Gru and Lucy's three adopted daughters, alongside her sisters Margo and Edith. She is the youngest child of the three sisters. She greatly adores unicorns, as shown on various occasions. Agnes is a little girl with dark brown eyes. Her long black hair is tied in an upwards ponytail with a red scrunchie. Most of the time, Agnes wears blue overalls over a yellow and brown striped t-shirt, and white sneakers with yellow socks. She also wears a white ballet outfit like Edith and Margo (at the ballet recital). For pajamas, Agnes wears a long blue nightshirt covered with teddy bears and polar bear slippers; her hair stays the same. On her birthday, Agnes is wearing a dress that resembles a princess riding a unicorn. The colors are similar to her regular outfit. She also wears a blue princess hat on her head.",
      colors: [Colors.pink.shade200, Colors.redAccent.shade400]),
  Character(
      name: "Margo",
      imagePath: "assets/images/Margo.png",
      description:
          "In Quentin's descriptions of her, Margo is the stereotypical cool girl. She's a queen bee at school, but she's also somewhat of a rebel, and cultivates an air of mystique around her through her adventures and wild stories. Margo is also quite self-centered, and she holds deep grudges",
      colors: [Colors.deepPurple.shade200, Colors.deepPurpleAccent.shade400]),
  Character(
      name: "Felonius Gru",
      description:
          "Felonius Gru is the main character of Despicable Me, Despicable Me 2, and Despicable Me 3, alongside Mel and a minor character in Minions. He is often referred to by his surname Gru, was formerly a supervillain and jelly manufacturer and a consultant for the Anti-Villain League. Born from the family with long line of villainy and formerly the world's greatest villain, Gru has been ousted by Vector, who had stolen the Pyramid of Giza and been bestowed the honor of pulling off the \"crime of the century\". In response, Gru unveils his plan for an even more impressive crime; the theft of the Moon. When his plans are interrupted by Vector, Gru becomes the adoptive father of three girls: Margo, Edith, and Agnes.",
      imagePath: "assets/images/Gru.png",
      colors: [Colors.blue.shade100, Colors.blueAccent.shade400])
];
