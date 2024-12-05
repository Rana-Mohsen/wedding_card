import 'dart:io';

class CardDataEntity {
   File? image;
   String? names;
   String? data;
   String? location;

   CardDataEntity(
      { this.image,
       this.names,
       this.data,
       this.location});
}
