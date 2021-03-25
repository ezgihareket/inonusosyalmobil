class StoreProduct {
  String name;
  String rating;
  String price;
  String image;

  StoreProduct({
    this.image,
    this.name,
    this.price,
    this.rating,
  });
}

List<StoreProduct> storeProducts = [
  StoreProduct(
    image: 'assets/images/questions.jpg',
    name: 'Kurucu: Ali Karcı',
    price: 'Algoritma Analizi Soruları',
    rating: '',
  ),
  StoreProduct(
    image: 'assets/images/notes.jpg',
    name: 'Kurucu: Samet Akbal',
    price: 'Algoritma Analizi Notlar',
    rating: '',
  ),
  StoreProduct(
    image: 'assets/images/help.png',
    name: 'Kurucu: Efdal Akın Barsan',
    price: 'Algoritma Analizi Yardım',
    rating: '',
  ),

];
