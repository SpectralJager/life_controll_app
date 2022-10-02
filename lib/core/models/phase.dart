import 'dart:convert';

class Phase {
  final String id;
  String? title;
  final DateTime start;
  DateTime? finish;

  Phase({
    required this.id,
    this.title,
    required this.start,
    this.finish,
  });

  Phase copyWith({
    String? id,
    String? title,
    DateTime? start,
    DateTime? finish,
  }) {
    return Phase(
      id: id ?? this.id,
      title: title ?? this.title,
      start: start ?? this.start,
      finish: finish ?? this.finish,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'start': start.millisecondsSinceEpoch,
      'finish': finish?.millisecondsSinceEpoch,
    };
  }

  factory Phase.fromMap(Map<String, dynamic> map) {
    return Phase(
      id: map['id'] as String,
      title: map['title'] != null ? map['title'] as String : null,
      start: DateTime.fromMillisecondsSinceEpoch(map['start'] as int),
      finish: map['finish'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['finish'] as int)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Phase.fromJson(String source) =>
      Phase.fromMap(json.decode(source) as Map<String, dynamic>);
}
