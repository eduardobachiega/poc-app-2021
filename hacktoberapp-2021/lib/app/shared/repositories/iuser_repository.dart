import 'package:flutter/cupertino.dart';
import 'package:hacktoberapp/app/shared/models/user.dart';

abstract class IUserRepository {
  Future<User> getInfo(BuildContext context, String username);
}