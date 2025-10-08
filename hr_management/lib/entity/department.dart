import 'package:hr_management/entity/designation.dart';

class Department {
  final int? id;
  final String name;
  final List<Designation>? designations;

  Department({
    this.id,
    required this.name,
    this.designations,
  });

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      id: json['id'],
      name: json['name'],
      designations: json['designations'] != null
          ? (json['designations'] as List)
          .map((e) => Designation.fromJson(e))
          .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'designations': designations?.map((e) => e.toJson()).toList(),
    };
  }
}
