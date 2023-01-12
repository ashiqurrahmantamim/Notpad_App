// To parse this JSON data, do
//
//     final todoMoel = todoMoelFromJson(jsonString);

import 'dart:convert';

TodoMoel? todoMoelFromJson(String str) => TodoMoel.fromJson(json.decode(str));

String todoMoelToJson(TodoMoel? data) => json.encode(data!.toJson());

class TodoMoel {
    TodoMoel({
        this.id,
        this.title,
        this.description,
        this.dateTime,
    });

    String? id;
    String? title;
    String? description;
    String? dateTime;

    factory TodoMoel.fromJson(Map<String, dynamic> json) => TodoMoel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        dateTime: json["dateTime"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "dateTime": dateTime,
    };
}
