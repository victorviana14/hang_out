import 'package:hang_out/src/models/item_model.dart';

ItemModel hamburguer = ItemModel(
  itemName: 'Hamburguer',
  imgUrl: 'lib/src/img/Bacon.jpg',
  unit: 'UN',
  price: 20.0,
  description: "O Melhor Hamburguer com cheddar da Região!",
);

ItemModel combos = ItemModel(
  itemName: 'Brasileirinho',
  imgUrl: 'lib/src/img/Brasileirinho.jpg',
  unit: 'UN',
  price: 35.0,
  description: "O Melhor Hamburguer com cheddar Bacon da Região!",
);

List<ItemModel> items = [
  hamburguer,
  combos,

];

List<String> categories = [
  "Hamburguers",
  "Porções",
  "Bebidas",
  "Aperitivos",
];