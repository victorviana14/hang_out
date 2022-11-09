import 'package:flutter/material.dart';
import 'package:hang_out/src/models/item_model.dart';
import 'package:hang_out/src/services/utils_services.dart';

class ItemTile extends StatelessWidget {
  ItemTile({Key? key, required this.item}) : super(key: key);

  final ItemModel item;

  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 3,
          shadowColor: Colors.grey.shade300,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //Imagem

                Expanded(
                  child: Image.asset(item.imgUrl),
                ),
                //Nome
                Text(
                  item.itemName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //Preço - Unidade
                Row(
                  children: [
                    Text(
                      utilsServices.priceToCurrency(item.price),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      '/${item.unit}',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: 4,
            right: 4,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                width: 35,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                  ),
                ),
                child: const Icon(
                  Icons.add_shopping_cart_outlined,
                  color: Colors.amber,
                  size: 20,
                ),
              ),
            ))
      ],
    );
  }
}
