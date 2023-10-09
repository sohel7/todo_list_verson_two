import 'package:flutter/Material.dart';
import 'package:todo_list_verson_two/update_modal.dart';

import 'add_new_task_modal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo Verson Two"),
      ),
     floatingActionButton: FloatingActionButton(
       onPressed: (){
         showModalBottomSheet(
             context: context,
             builder: (contex){
          return const AddOrUpdateTaskModal();
         });
       },
       child: Icon(Icons.add),
     ),

      // ETA ITEM.BUILDER DIE KORA
      //===============================================================
      // body: ListView.builder(
      //   itemCount: 10,
      //     itemBuilder: (context, index){
      //     return  ListTile(
      //       leading: CircleAvatar(
      //         child: Text('${index + 1}'),
      //       ),
      //       title: Text('I have sterted Flutter project for the First Time'),
      //       subtitle: Text('8-OCT-2023'),
      //       trailing: Text("pending"),
      //     );
      // }
      // ),

      // ETA ITEM.SEPERATED DIE KORA
      //===============================================================
      body: ListView.separated(
        itemCount: 10,
          itemBuilder: (context, index){
          return  ListTile(
            onTap: (){
              showDialog(context: context, builder: (context){
              return   AlertDialog(
                title: Text('Actions'),
               content: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.edit),
                    title: Text('Edit'),
                   // onTap: (){ },
                  ),
                  Divider(height: 0,),
                  ListTile(
                    leading: Icon(Icons.delete_outline),
                    title: Text('Delete'),
                  //  onTap: (){},
                  ),
                  Divider(height: 0,),
                  ListTile(
                    leading: Icon(Icons.update),
                    title: Text('Update'),
                     onTap: (){
                      Navigator.pop(context);
                      showModalBottomSheet(context: context, builder: (context){
                        return UpdateTaskModal();
                      });
                     },
                  )
                ],
              ),
               );
              });
            },
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: Text('I have sterted Flutter project for the First Time'),
            subtitle: Text('8-OCT-2023'),
            trailing: Text("pending"),
          );
      }, separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 5,
          );
      },
      ),
    );
  }
}



