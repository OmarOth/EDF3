enum AppIconsEnum with AppIconsName {
  card("card"),
  home("home"),
  history("history"),
  qr("qr"),
  profile("profile");

  const AppIconsEnum(this.name);

  @override
  final String name;

  String getPath() {
    return 'assets/$name.png';
  }
}

mixin AppIconsName {
  String get name;
}
