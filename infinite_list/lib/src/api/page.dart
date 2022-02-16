import 'item.dart';

const int itemsPerpage = 20;

class ItemPage {
  final List<Item> items;
  final int startingIndex;
  final bool hasNext;

  ItemPage({
    required this.items,
    required this.startingIndex,
    required this.hasNext,
  });
}
