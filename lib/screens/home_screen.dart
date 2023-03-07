import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/screens/todos_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/homeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.jpg'),
            ),
            title: Column(
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
          bottom: TabBar(labelColor: Colors.black45, tabs: [
            Tab(
              text: 'Priorities',
            ),
            Tab(
              text: 'Daily',
            ),
            Tab(
              text: 'Weekly',
            ),
          ]),
        ),
        body: TabBarView(children: [
          // Tab 1
          Container(color: Colors.indigo),
          // Tab 2
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, TodosScreen.routeName);
                  },
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.indigo,
                    child: ListTile(
                      title: Text('Lectures'),
                      subtitle: Text('5 Tasks'),
                      trailing: CircleProgressBar(
                        foregroundColor: Colors.indigo,
                        backgroundColor: Colors.black12,
                        value: 0.80,
                        child: Center(
                          child: AnimatedCount(
                            count: 0.8,
                            unit: '%',
                            duration: Duration(milliseconds: 500),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 5,
                  shadowColor: Colors.indigo,
                  child: ListTile(
                    title: Text('Workouts'),
                    subtitle: Text('4 Tasks'),
                    trailing: CircleProgressBar(
                      foregroundColor: Colors.indigo,
                      backgroundColor: Colors.black12,
                      value: 0.50,
                      child: Center(
                        child: AnimatedCount(
                          count: 0.5,
                          unit: '%',
                          duration: Duration(milliseconds: 500),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 5,
                  shadowColor: Colors.indigo,
                  child: ListTile(
                    title: Text('UI Challenge'),
                    subtitle: Text('3 Tasks'),
                    trailing: CircleProgressBar(
                      foregroundColor: Colors.indigo,
                      backgroundColor: Colors.black12,
                      value: 0.80,
                      child: Center(
                        child: AnimatedCount(
                          count: 0.8,
                          unit: '%',
                          duration: Duration(milliseconds: 500),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Tab 2
          Container(color: Colors.indigo),
        ]),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
