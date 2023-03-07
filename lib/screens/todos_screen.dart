import 'package:flutter/material.dart';

class TodosScreen extends StatefulWidget {
  static const routeName = "/todosScreen";
  const TodosScreen({super.key});

  @override
  State<TodosScreen> createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar.jpg'),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: TextStyle(color: Colors.black45, fontSize: 16),
              ),
              Text(
                'Israa Hassan',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black45,
                size: 30,
              ))
        ],
        toolbarHeight: 100,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          flex: 1,
          child: Container(
            child: Center(
              child: Text(
                "Lectures",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black45,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(
                  color: Colors.black12,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: [
                Container(
                  child: ListTile(
                      leading: Icon(Icons.check_box_outlined),
                      title: Text(
                        'HCL Lec 1',
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      )),
                ),
                Container(
                  child: ListTile(
                      leading: Icon(Icons.check_box_outlined),
                      title: Text(
                        'HCL Lec 2',
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      )),
                ),
                Container(
                  child: ListTile(
                      leading: Icon(Icons.check_box_outlined),
                      title: Text(
                        'HCL Lec 3',
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      )),
                ),
                Container(
                  child: ListTile(
                      leading: Icon(Icons.check_box_outlined),
                      title: Text(
                        'Cloud Lec 3',
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      )),
                ),
                Container(
                  child: ListTile(
                      leading: Icon(Icons.check_box_outline_blank),
                      title: Text(
                        'Cloud Lec 2',
                      )),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            flex: 2,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Add New Item',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ))
      ]),
    );
  }
}
