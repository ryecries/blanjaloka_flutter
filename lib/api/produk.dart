class Produk {
  final String id;
  final String name;
  final String image;
  final int price;
  final int stock;
  final String satuan;

  Produk(
      {required this.id,
      required this.image,
      required this.price,
      required this.name,
      required this.satuan,
      required this.stock});

  static Produk fromJson(json) => Produk(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      price: json['price'],
      satuan: json['satuan'],
      stock: json['stock']);
}
