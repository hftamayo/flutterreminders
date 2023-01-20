import 'package:flutter/material.dart';
import 'package:flutterreminder/models/group.dart';
import 'package:flutterreminder/ui/add_group_screen.dart';

class GroupsScreen extends StatefulWidget {
  const GroupsScreen({super.key});

  @override
  State<GroupsScreen> createState() => _GroupsScreenState();
}

class _GroupsScreenState extends State<GroupsScreen> {
  final _groups = <Group>[];
  late final Store _store;
  late final Box<Group> _groupsBox;

  Future<void> _addGroup() async {
    final result = await showDialog(
      context: context,
      builder: (_) => const AddGroupScreen(),
    );

    if (result != null) {}
  }

  Future<void> _loadGroups() {
    _groups.clear();
    _groups.addAll(_groupsBox.getAll());
  }

  Future<void> _loadStore() async {
    _store = await openStore();
    _groupsBox = _store.box<Group>();
    _loadGroups();
  }

  @override
  void initState() {
    _loadStore();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
/*     appBar: AppBar(
      title: const Text('Reminders'),
    ),
    body: _groups.isEmpty 
    ? const Center(child: Text('There are no Groups'),
    )
    : GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, 
      ) ,
      itemCount: _groups.length,
      itemBuilder: (context, index){
        final group: _groups[index];
        return _GroupItem(
          onTap: () => _goToTasks(group),
          group: group,
        );
      },
      ),
 */
        );
  }
}

/* @override
Widget build(BuildContext context){

} */