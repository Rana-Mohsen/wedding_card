class CardDataEntity {
  String? cardId;
  String? image;
  String? names;
  String? date;
  String? location;

  CardDataEntity(
      {this.cardId, this.image, this.names, this.date, this.location});

  Map<String, dynamic> toMap() {
    return {
      'id': cardId,
      'image': image,
      'names': names,
      'data': date,
      'location':location
    };
  }
  //  factory CardDataEntity.fromMap(Map<String, dynamic> firebaseCard) {
  //   return CardDataEntity(cardId: firebaseCard.);
  // }
}
