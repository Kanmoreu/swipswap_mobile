class ProductModel {
  String? nama_product;
  String? gambar_product;
  String? deskripsi;
LikeButton(
          size: buttonSize,
          circleColor:
              CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
          bubblesColor: BubblesColor(
            dotPrimaryColor: Color(0xff33b5e5),
            dotSecondaryColor: Color(0xff0099cc),
          ),
          likeBuilder: (bool isLiked) {
            return Icon(
              Icons.home,
              color: isLiked ? Colors.deepPurpleAccent : Colors.grey,
              size: buttonSize,
            );
          },
          likeCount: 665,
          countBuilder: (int count, bool isLiked, String text) {
            var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
            Widget result;
            if (count == 0) {
              result = Text(
                "love",
                style: TextStyle(color: color),
              );
            } else
              result = Text(
                text,
                style: TextStyle(color: color),
              );
            return result;
          },
        ),

  ProductModel({this.nama_product, this.gambar_product, this.deskripsi});

  factory ProductModel.fromMap(map) {
    return ProductModel(
        nama_product: map['nama_product'],
        gambar_product: map['gambar_product'],
        deskripsi: map['deskripsi']);
  }

  Map<String, dynamic> toMap() {
    return {
      'nama_product': nama_product,
      'gambar_product': gambar_product,
      'deskripsi': deskripsi,
    };
  }
}
