import 'package:flutter/material.dart';
import 'package:maestro/views/Classes/components/TabBar/components/General/GeneralTab.dart';
import 'package:maestro/views/Classes/components/TabBar/components/Tareas/TareasTab.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage( {Key? key, required this.title, required this.imageUrl}) : super(key: key);
  final String title;
  final String imageUrl;

  @override
  _TabBarPageState createState() => _TabBarPageState(title, imageUrl);
}

class _TabBarPageState extends State<TabBarPage> with SingleTickerProviderStateMixin {
  late TabController tabController;
  final String title;
  final String imageUrl;
  _TabBarPageState(this.title, this.imageUrl);

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: Row(
          children: [
            IconButton(
              iconSize: 30,
              icon: const Icon(Icons.menu_outlined,),
              onPressed: () {},
            ),
            
          ],
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions:  <Widget>[
          IconButton(
            iconSize: 30,
            icon: const Icon(Icons.notifications_active_outlined),
            onPressed:(){},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF60A9CD),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TabBar(
                unselectedLabelColor: Colors.white,
                labelColor: const Color(0xFF60A9CD),
                indicatorColor: Colors.white,
                indicatorWeight: 2,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                indicatorPadding: const EdgeInsets.all(1),
                controller: tabController,
                tabs: const [
                  Tab(
                    text: 'General',
                  ),
                  Tab(
                    text: 'Tareas',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children:  [
                  const GeneralTab(),
                  TareasTab(  title: 'Hacer la tarea de matemáticas',
                  description: 'Resolver los ejercicios del capítulo 5 antes del viernes.', imageUrl: imageUrl,dueDate: DateTime(2024, 04, 8),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




