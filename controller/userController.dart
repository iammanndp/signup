import '../models/userModel.dart';
import '../utilities/databaseHelper.dart';

class SignupUser {
  var users = <Users>[];

  final DatabaseHelper databaseHelper = DatabaseHelper();
  getUsers() async {
    users = await databaseHelper.getUser();
    return users;
  }
}
