class Task {
  String? task;
  bool isDelivered = false;
  Task();
  String? getTask() {
    return task;
  }

  bool? IsDelivered() {
    return isDelivered;
  }

  void setTask(String? Task) {
    this.task = Task;
  }

  void setIsDelevered(bool isDelver) {
    this.isDelivered = isDelver;
  }
}
