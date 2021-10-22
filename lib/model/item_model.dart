class ItemModel {
  static List<Item> item = [];
}

class Item {
  final String img;
  final String itemname;

  Item({
    required this.img,
    required this.itemname,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      img: map["img"],
      itemname: map["itemname"],
    );
  }

  toMap() => {
        "img": img,
        "itemname": itemname,
      };
}
