import 'package:flutter/material.dart';

class WidgetTwoPage extends StatefulWidget {
  const WidgetTwoPage({
    Key? key,
  }) : super(key: key);

  @override
  State<WidgetTwoPage> createState() => _WidgetTwoState();
}

class _WidgetTwoState extends State<WidgetTwoPage> {
  final List<TaskTwoWorkflow> workflow = [
    TaskTwoWorkflow('Widget 2 workflow task 1', 'Task cert'),
    TaskTwoWorkflow('Widget 2 workflow task 2', 'Task cert'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget 2'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2.0),
          ),
          padding: const EdgeInsets.all(16.0),
          child: DataTable(
            columns: const <DataColumn>[
              DataColumn(label: Text('Task Name')),
              DataColumn(label: Text('Task Info')),
            ],
            rows: workflow
                .map(
                  (workflow) => DataRow(
                cells: <DataCell>[
                  DataCell(Text(workflow.taskName)),
                  DataCell(Text(workflow.taskInfo))
                ],
              ),
            )
                .toList(),
          ),
        ),
      ),
    );
  }
}

class TaskTwoWorkflow {
  final String taskName;
  final String taskInfo;

  TaskTwoWorkflow(this.taskName, this.taskInfo);
}
