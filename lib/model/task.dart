class TaskModel {
  String title;
  bool checked;

  TaskModel({
    this.title,
    this.checked
  });
}

var taskList = [
  TaskModel(
    title: 'Task 1',
    checked : true
  ),
  TaskModel(
    title: 'Task 2',
    checked : true
  ),
  TaskModel(
    title: 'Task 3',
    checked : false
  ),
  TaskModel(
    title: 'Task 4',
    checked : true
  ),
  TaskModel(
    title: 'Task 5s',
    checked : true
  ),

  
];
