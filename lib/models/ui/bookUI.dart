class BookUI {
  final int id;
  final String name;
  final String description;
  final int avilable;
  final String auther;
  final int faculty;
  String block;
  String row;
  String column;
  String borrowed;
  String closest;

  BookUI({
    required this.id,
    required this.name,
    required this.description,
    required this.avilable,
    required this.auther,
    required this.faculty,
    this.block = "-",
    this.row = "-",
    this.column = "-",
    this.borrowed = "-",
    this.closest = "-",
  });
}
