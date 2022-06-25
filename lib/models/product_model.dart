class ProductModel {
  String? nama_product;
  String? gambar_product;
  String? deskripsi;

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
