import 'package:dio/dio.dart';
import 'package:flutter_playground/model/todo_model.dart';
import 'package:flutter_playground/service/http_client_interface.dart';

const url = 'https://jsonplaceholder.typicode.com/todos';

class JsonPlaceholderService {
  final IHttpClient client;

  JsonPlaceholderService(this.client);

  Future<List<TodoModel>> getTodos() async {
    final body = await client.get(url);
    return (body as List).map(TodoModel.fromJson).toList();
  }
}
