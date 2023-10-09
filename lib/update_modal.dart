import 'package:flutter/Material.dart';

class UpdateTaskModal extends StatelessWidget {
  const UpdateTaskModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Update To Do", style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(height: 20,),
            TextFormField(
              maxLines: 4,
              decoration: const InputDecoration(
                  hintText: 'Inter Your TO Do Here',
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 16.0),
            SizedBox(
                width: double.infinity,
                child:  ElevatedButton(onPressed: (){}, child: Text('Update'))
            )

          ],
        )
    );
  }
}