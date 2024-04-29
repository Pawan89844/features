class UserData {
  static List<UserDataModel> userData = <UserDataModel>[
    UserDataModel(0, 'Grocery'),
    UserDataModel(1, 'Food'),
    UserDataModel(2, 'Stationary'),
    UserDataModel(3, 'Meat'),
    UserDataModel(4, 'Health & Wellness'),
    UserDataModel(5, 'Home & Garden'),
    UserDataModel(6, 'Travel'),
    UserDataModel(7, 'Baby Care'),
    UserDataModel(8, 'Personal Care'),
    UserDataModel(9, 'Electronics'),
    UserDataModel(10, 'Pets'),
  ];
}

class UserDataModel {
  final int id;
  final String productName;

  UserDataModel(this.id, this.productName);
}
