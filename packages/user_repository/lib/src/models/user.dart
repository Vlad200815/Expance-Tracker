import 'package:user_repository/src/entities/entities.dart';

class MyUser {
  String id;
  String email;

  MyUser({required this.email, required this.id});

  MyUserEntity toEntity() {
    return MyUserEntity(
      id: id,
      email: email,
    );
  }

  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(
      id: entity.id,
      email: entity.email, 
    );
  }
}
