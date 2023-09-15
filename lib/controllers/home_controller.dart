import 'package:flutter/foundation.dart';
import 'package:flutter_playground/model/todo_model.dart';
import 'package:flutter_playground/service/dio_client.dart';
import 'package:flutter_playground/service/json_placeholder_service.dart';

class HomeController extends ChangeNotifier {
  final _service = JsonPlaceholderService(DioClient());
  var todos = <TodoModel>[];

  Future<void> fetchAllTodos() async {
    todos = await _service.getTodos();
  }
}
