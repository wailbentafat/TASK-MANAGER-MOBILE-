import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_manager/constant/app_styles.dart';
import 'package:task_manager/constant/text-const.dart';
import 'package:task_manager/provider/task_provider.dart';
import 'package:task_manager/widget/task.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({
    super.key,
    required this.isDarkTheme,
    required this.toggleTheme,
  });

  final bool isDarkTheme;
  final VoidCallback toggleTheme;

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Access the TaskProvider instance
    final taskProvider = Provider.of<TaskProvider>(context);

    // Determine the theme mode
    final theme = Theme.of(context);
    final backgroundColor = theme.scaffoldBackgroundColor;
    final borderColor = theme.dividerColor;
    final buttonColor = theme.buttonTheme.colorScheme?.primary ?? Colors.black;
    final textColor = theme.textTheme.bodyLarge?.color ?? Colors.black;

    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: backgroundColor,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: borderColor, width: 1.0),
              boxShadow: [
                BoxShadow(
                  color: borderColor.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                        child: Text(
                          Appstrings.title,
                          style: Appstyles.title.copyWith(color: textColor),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: const Color.fromARGB(255, 227, 226, 226),
                              width: 1,
                            ),
                          ),
                          child: IconButton(
                            onPressed: widget.toggleTheme,
                            icon: Icon(
                              widget.isDarkTheme
                                  ? Icons.dark_mode_outlined
                                  : Icons.light_mode_outlined,
                              color: textColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  heightFactor: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Form(
                      key: _formKey,
                      child: Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 350,
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: _taskController,
                                  decoration: InputDecoration(
                                    labelText: Appstrings.label,
                                    labelStyle: TextStyle(color: textColor),
                                    border: OutlineInputBorder(),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 12),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter a task';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              const SizedBox(width: 20),
                              ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    String task = _taskController.text;

                                    if (task.isEmpty) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              "Task cannot be empty"),
                                          backgroundColor: Colors.red,
                                        ),
                                      );
                                      return;
                                    }

                                    taskProvider.addtask(task);
                                    _taskController.clear();

                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(
                                      SnackBar(
                                        content: Text(
                                            "Task '$task' added successfully!"),
                                        backgroundColor: Colors.green,
                                      ),
                                    );
                                  }
                                },
                                child: const Text(
                                  Appstrings.Add,
                                  style: Appstyles.button,
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(buttonColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Appstrings.yourtasks,
                        style: Appstyles.subtitle.copyWith(color: textColor),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text(
                          Appstrings.completed(
                            taskProvider.completedtasks,
                            taskProvider.tasklength,
                          ),
                          style: Appstyles.label.copyWith(color: textColor),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(
                      itemCount: taskProvider.tasks.length,
                      itemBuilder: (BuildContext context, int index) {
                        final task = taskProvider.tasks[index];
                        return Task(
                          index: index,
                          taskmo: task,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
