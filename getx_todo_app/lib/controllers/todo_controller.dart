import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_todo_app/models/todo.dart';

/// This class holds the state of the application using the 'get' package

class TodoController extends GetxController {
  var todos = List<Todo>().obs;

  @override
  void onInit() {
    /// This [storedTodos] check if there is previous to-dos saved
    List storedTodos = GetStorage().read<List>('todos');
    if (!storedTodos.isNull) {
      todos = storedTodos.map((e) => Todo.fromJson(e)).toList().obs;
    }
    /// This [ever] is called every time that variable todos is changed
    ever(todos, (_) {
      GetStorage().write('todos', todos.toList());
    });
    super.onInit();
  }
}
