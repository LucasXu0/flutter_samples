import 'package:flutter/material.dart';

import 'api/item.dart';

class ItemTile extends StatelessWidget {
  final Item item;

  const ItemTile({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: AspectRatio(
          aspectRatio: 1,
          child: Container(
            color: item.color,
          ),
        ),
        title: Text(
          item.name,
          style: Theme.of(context).textTheme.headline6,
        ),
        trailing: Text('\$ ${(item.price / 100).toStringAsFixed(2)}'),
      ),
    );
  }
}

class LoadingItemTile extends StatelessWidget {
  const LoadingItemTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: const AspectRatio(
          aspectRatio: 1,
          child: Placeholder(),
        ),
        title: Text(
          '...',
          style: Theme.of(context).textTheme.headline6,
        ),
        trailing: const Text('\$ ...'),
      ),
    );
  }
}
