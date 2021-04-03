class Movie {
  String _name;
  DateTime _releaseDate;
  double _rate;
  String _description;
  String _path;

  Movie.fromJson(Map<String, dynamic> json) {
    _name = json["name"];
    _releaseDate = DateTime.parse(json["release_date"]);
    _rate = json["rate"] as double;
    _description = json["description"];
    _path = json["path"];
  }

  String get name => _name;

  DateTime get releaseDate => _releaseDate;

  double get rate => _rate;

  String get description => _description;

  String get path => _path;
}
