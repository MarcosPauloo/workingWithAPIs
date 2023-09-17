import 'package:flutter/foundation.dart';
import 'package:flutter_playground/model/todo_model.dart';
import 'package:flutter_playground/service/dio_client.dart';
import 'package:flutter_playground/service/json_placeholder_service.dart';

class HomeController extends ChangeNotifier {
  final JsonPlaceholderService _service;

  HomeController(this._service);
  var todos = <TodoModel>[];

  Future<void> fetchAllTodos() async {
    todos = await _service.getTodos();
    notifyListeners();
  }
}
