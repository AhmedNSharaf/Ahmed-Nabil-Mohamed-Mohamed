abstract class Serializable {
  toJson();
}

class User implements Serializable {
  String name;
  int age, id;

  User(this.name, this.age, this.id);
  @override
  toJson() {
    return ("User name : $name , User age : $age , User Id : $id");
  }
}

class Product implements Serializable {
  String name;
  int id;
  double price;

  Product(this.name, this.price, this.id);
  @override
  toJson() {
    return ("Pruduct name : $name , Product price : $price , Product Id : $id");
  }
}

void main() {
  User user1 = User("Ali", 21, 2);
  Product product1 = Product("Book", 120.5, 5);

  print(user1.toJson());
  print("======================");
  print(product1.toJson());
}
