import 'package:flutter/material.dart';
import 'package:flutter_tab_bar/pages/para_voce.dart';
import 'package:flutter_tab_bar/pages/seguindo.dart';


class Home extends StatefulWidget {
 
  const Home({
    super.key,
    
    });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [     
              Expanded(
                  child: Image.asset(
                'assets/xtwitter.webp',
                width: 50,
                height: 50,
              )),
            ],
          ),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Para você'),
              Tab(text: 'Seguindo'),
            ],
          ),
        ),
        body: const TabBarView(    
          children: [
             ParaVoce(),
             Seguindo(),     
          ],
        ),
        floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          
          },
          child: const Icon(Icons.add),
          ),

          
        
        bottomNavigationBar: BottomNavigationBar(
           
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            
          const BottomNavigationBarItem( backgroundColor: Colors.black, label: "", icon: Icon (Icons.home_outlined)),
          const BottomNavigationBarItem(backgroundColor: Colors.black, label: "", icon: Icon (Icons.search_outlined)),
          const BottomNavigationBarItem(backgroundColor: Colors.black, label: "", icon: Icon (Icons.notifications_active_outlined)),
          const BottomNavigationBarItem(backgroundColor: Colors.black, label: "", icon: Icon (Icons.messenger_outline_outlined)),
          
        ]),
      ),
    );
  }
}
