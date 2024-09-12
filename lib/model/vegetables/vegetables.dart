class VegetablesListModel {
  String? imageurl;
  String? name;
  String? price;
  VegetablesListModel(this.imageurl, this.name, this.price);

  VegetablesListModel.formJson(Map<String, dynamic> json) {
    imageurl = json['image_url'];
    name = json["name"];
    price = json['price'];
  }
}
