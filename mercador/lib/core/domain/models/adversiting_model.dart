class AdversitingModel{
  final String description, imageUrl;
  final String? buttonText, buttonLink;
  final bool isAsset;

  AdversitingModel(this.description, this.buttonText, this.buttonLink, this.imageUrl, {
    this.isAsset = false
  });
  
  factory AdversitingModel.invalid(){
    return AdversitingModel("", "", "", "");
  }
  
  factory AdversitingModel.json(Map json, {
    bool isAsset = false
  }){
    if(!json.containsKey("description") ||
      !json.containsKey("imageUrl")){
      return AdversitingModel.invalid();
    }
    return AdversitingModel(json["description"], json["buttonText"], json["buttonLink"], json["imageUrl"], isAsset: isAsset);
  }

  bool isValid(){
    return description.isNotEmpty && imageUrl.isNotEmpty;
  }
}