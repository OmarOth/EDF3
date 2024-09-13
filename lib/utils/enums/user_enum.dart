enum UserTypeEnum with UserTypeEnumMixin {
  guest('guest'),
  authenticated('authenticated'),
  notAuthenticated('notAuthenticated');

  const UserTypeEnum(this.name);

  @override
  final String name;

  String toMap() => name;

  static UserTypeEnum fromMap(String name) =>
      UserTypeEnum.values.firstWhere((element) => element.name == name);
}

mixin UserTypeEnumMixin {
  String get name;
}
