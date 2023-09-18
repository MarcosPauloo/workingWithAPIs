import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_playground/service/dio_client.dart';
import 'package:flutter_playground/service/json_placeholder_service.dart';

import '../controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Modular.get<HomeController>();

  @override
  void initState() {
    super.initState();
    controller.fetchAllTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: AnimatedBuilder(
        animation: controller,
        builder: (context, widget) {
          return ListView.builder(
              itemCount: controller.todos.length,
              itemBuilder: (context, index) {
                final todo = controller.todos[index];
                return ListTile(
                  title: Text(todo.title),
                );
              });
        },
      ),
    );
  }
}
