import 'package:flutter/material.dart';

class WidgetOnePage extends StatefulWidget {
  const WidgetOnePage({
    Key? key,
  }) : super(key: key);

  @override
  State<WidgetOnePage> createState() => _WidgetOneState();
}

class _WidgetOneState extends State<WidgetOnePage> {
  final List<Workflow> workflow = [
    Workflow('Widget 1 workflow task 1', 'Task cert'),
    Workflow('Widget 1 workflow task 2', 'Task cert'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget 1'),
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

class Workflow {
  final String taskName;
  final String taskInfo;

  Workflow(this.taskName, this.taskInfo);
}
