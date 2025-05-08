import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);

      print('Data pertama:');
      print('ID: ${data[0]['id']}'); // 1
      print('Title: ${data[0]['title']}'); // sunt aut facere repellat provident occaecati excepturi optio reprehenderit
      print('Body: ${data[0]['body']}'); // quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto
    } else {
      print('Gagal mengambil data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Terjadi kesalahan: $e');
  }
}