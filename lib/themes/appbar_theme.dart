part of "main_theme.dart";

AppBarTheme createAppBarTheme(){
  return const AppBarTheme(
    centerTitle: false,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(0, 0, 0, 0.25)
    ),
  );
}