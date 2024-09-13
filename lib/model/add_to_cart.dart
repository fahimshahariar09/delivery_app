class AddToCartListModel {
  String? image;
  String? name;
  int? price;

  AddToCartListModel(this.image, this.name, this.price);

  AddToCartListModel.formJson(Map<String, dynamic> json) {
    image = json["image"];
    name = json["name"];
    price = json["price"];
  }
}
