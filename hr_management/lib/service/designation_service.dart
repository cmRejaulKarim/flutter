import 'dart:convert';
import 'package:hr_management/entity/designation.dart';
import 'package:http/http.dart' as http;

class DesignationService {
  final String baseUrl = "http://localhost:8085";

  Future<List<Designation>?> getAllDesignations() async {
    final url = Uri.parse('$baseUrl/api/designation');

    try {
      final response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> body = jsonDecode(response.body);

        return body.map((json) => Designation.fromJson(json)).toList();
      } else {
        print('Failed to fetch designations: ${response.body}');
        return null;
      }
    } catch (e) {
      print('Error fetching designations: $e');
      return null;
    }
  }
}
