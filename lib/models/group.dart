class GroupProduct {
  String name;
  String rating;
  String description;
  String image;

  GroupProduct({
    this.image,
    this.name,
    this.description,
    this.rating,
  });
}

List<GroupProduct> groupProducts = [
  GroupProduct(
    image: 'assets/images/questions.jpg',
    name: 'Kurucu: Ali Karcı',
    description: 'Algoritma Analizi Soruları',
    rating: '',
  ),
  GroupProduct(
    image: 'assets/images/notes.jpg',
    name: 'Kurucu: Samet Akbal',
    description: 'Algoritma Analizi Notlar',
    rating: '',
  ),
  GroupProduct(
    image: 'assets/images/help.png',
    name: 'Kurucu: Efdal Akın Barsan',
    description: 'Algoritma Analizi Yardım',
    rating: '',
  ),

];
