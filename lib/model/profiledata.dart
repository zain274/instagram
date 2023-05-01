class UserProfile {
  final String name;
  final String url;

  UserProfile(this.name, this.url);
}

class UsersData {
  static final List users = [
    UserProfile('Zain', 'userimg.jpg'),
 
  ];
}