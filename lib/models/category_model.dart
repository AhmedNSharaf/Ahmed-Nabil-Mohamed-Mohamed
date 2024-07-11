import 'package:task3/utils/images_name.dart';

class CategoryModel {
  final String name;
  final String image;

  CategoryModel({
    required this.name,
    required this.image,
  });
}

List<CategoryModel> categories = [
  CategoryModel(name: "Sports", image: sports),
  CategoryModel(name: "IQ", image: IQ),
  CategoryModel(name: "Math", image: math),
  CategoryModel(name: "Knowledg", image: knowledg),
  CategoryModel(name: "Cinema", image: cinema),
];
