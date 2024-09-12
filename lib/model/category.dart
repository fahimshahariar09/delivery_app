class CategoryListModel{

  String? image;
  String? name;
  int? id;

  CategoryListModel(this.image,this.name,this.id);


  CategoryListModel.formJson(Map<String,dynamic> json){
    image =json["image"];
    name =json["name"];
    id=json['id'];
  }


}