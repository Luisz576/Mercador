class ProductModel{
  final String name, description;
  final double fullPrice, off;
  final bool freeFreight;

  ProductModel(this.name, this.description, this.fullPrice, this.off, this.freeFreight);
  
  factory ProductModel.invalid(){
    return ProductModel("", "", -1.0, 0.0, false);
  }

  factory ProductModel.json(Map json){
    if(!json.containsKey("name")
      || !json.containsKey("description")
      || !json.containsKey("fullPrice")
      || !json.containsKey("off")
      || !json["freeFreight"]){
      return ProductModel.invalid();
    }
    return ProductModel(json["name"], json["description"], json["fullPrice"], json["off"], json["freeFreight"]);
  }

  bool isValid(){
    return name.isNotEmpty && description.isNotEmpty && price() > 0;
  }

  double price(){
    if(off > 100){
      return 0.0;
    }else if(off < 0){
      return fullPrice;
    }
    return fullPrice * (100.0 - off);
  }
}