import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibonus_app/bloc/store/store_bloc.dart';
import 'package:ibonus_app/bloc/store/store_event.dart';
import 'package:ibonus_app/ui/pages/home/profile_page.dart';
import 'package:ibonus_app/ui/pages/home/store_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  void initState() {
    super.initState();

    context.read<StoreBloc>().add(StoreGetEvent());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: index, children: [StorePage(), ProfilePage()]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (i) {
         setState(() {
           index = i;
         }); 
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.store_rounded), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_rounded), label: ''),
        ],
      ),
    );
  }
}
