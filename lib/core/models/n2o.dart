import 'dart:convert';

class N2OModel {
  final String? id;
  final String? date;
  final String? mean;
  final String? unc;
  final String? unit;
  N2OModel({
    this.id,
    this.date,
    this.mean,
    this.unc,
    this.unit,
  });

  N2OModel copyWith({
    String? id,
    String? date,
    String? mean,
    String? unc,
    String? unit,
  }) {
    return N2OModel(
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

  factory N2OModel.fromJson(Map<String, dynamic> map) {
    return N2OModel(
      id: map['id'],
      date: map['date'],
      mean: map['mean'],
      unc: map['unc'],
      unit: map['unit'],
    );
  }
}
