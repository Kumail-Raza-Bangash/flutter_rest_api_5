class UserName {
  final String title;
  final String first;
  final String last;

  UserName({
    required this.first,
    required this.title,
    required this.last,
  });

  factory UserName.fromMap(Map<String, dynamic>json){
    return UserName(
        first: json['first'], 
        title: json['title'], 
        last: json['last']);
  }
}