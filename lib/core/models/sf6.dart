import 'dart:convert';

class SF6Model {
  final String? id;
  final String? date;
  final String? mean;
  final String? unc;
  final String? unit;
  SF6Model({
    this.id,
    this.date,
    this.mean,
    this.unc,
    this.unit,
  });

  SF6Model copyWith({
    String? id,
    String? date,
    String? mean,
    String? unc,
    String? unit,
  }) {
    return SF6Model(
      id: id ?? this.id,
      date: date ?? this.date,
      mean: mean ?? this.mean,
      unc: unc ?? this.unc,
      unit: unit ?? this.unit,
    );
  }

  Map<String, dynamic> toJson() {
    final result = <String, dynamic>{};
  
    if(id != null){
      result.addAll({'id': id});
    }
    if(date != null){
      result.addAll({'date': date});
    }
    if(mean != null){
      result.addAll({'mean': mean});
    }
    if(unc != null){
      result.addAll({'unc': unc});
    }
    if(unit != null){
      result.addAll({'unit': unit});
    }
  
    return result;
  }

  factory SF6Model.fromJson(Map<String, dynamic> map) {
    return SF6Model(
      id: map['id'],
      date: map['date'],
      mean: map['mean'],
      unc: map['unc'],
      unit: map['unit'],
    );
  }
}
