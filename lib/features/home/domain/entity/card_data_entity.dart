class CardDataEntity {
  String? cardId;
  String? image;
  String? names;
  String? data;
  String? location;

  CardDataEntity(
      {this.cardId, this.image, this.names, this.data, this.location});

  Map<String, dynamic> toMap() {
    return {
      'id': cardId,
      'image': image,
      'names': names,
      'data': data,
      'location':location
    };
  }
}
