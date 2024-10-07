import 'package:students_data_app/headers.dart';

import 'Componenet/editstudentdatadialog.dart';
import 'Componenet/imagechangedialogue.dart';
import 'Componenet/studentdatatlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    void getSetState() => setState(() {});

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'StudentData',
          style: TextStyle(color: Colors.white, fontSize: 24, letterSpacing: 2),
        ),
        centerTitle: true,
        titleSpacing: 1,
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
            onPressed: getSetState,
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade200,
      body: ListView.builder(
        itemCount: Globals.globals.StudentData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: studentListTile(
                context: context,
                index: index,
                ImageChangeDialogue: ImageChangeDialogue,
                size: size,
                getSetState: getSetState,
                EditStudentDataDialogue: EditStudentDataDialogue),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pushNamed(
            MyRoutes.AddDataPage,
          );
        },
        backgroundColor: Colors.blueGrey,
        label: Text('Add Student Data'),
        icon: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
