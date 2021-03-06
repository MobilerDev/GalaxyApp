import 'dart:convert';

/*List<Question> questionFromJson(String str) =>
    List<Question>.from(json.decode(str).map((x) => Question.fromJson(x)));

String questionToJson(List<Question> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));*/
Question questionFromJson(String str) {
  final jsonData = json.decode(str);
  return Question.fromJson(jsonData);
}

String questionToJson(Question data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class Question {
  Question({
    this.id,
    this.name,
    this.description,
  });

  int id;
  String name;
  String description;

  factory Question.fromJson(Map<String, dynamic> json) => Question(
        id: json["id"],
        name: json["name"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
      };
}
