
class Note {
  int? id;
  String titre;
  String description;
  DateTime date;

  Note({required this.titre, required this.description, required this.date});
  factory Note.fromJson(Map<String, dynamic> json){
    return Note(
      titre: json['titre'],
      description: json['description'],
      date: DateTime.parse(json['date']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'titre': titre,
      'description': description,
      'date': date.toIso8601String(),
    };
  }
}