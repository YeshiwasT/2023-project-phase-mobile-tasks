import 'package:add_task/todo_list/Model/task_model.dart';
import 'package:add_task/todo_list/widgets/single_todo.dart';
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
final List<Task> Tasks = <Task>[
    Task(image:"U",title:"UI/UX App Design",date:"April. 29,2023",color:Colors.red),
    Task(image:"U",title:"UI/UX App Design",date:"April. 29,2023",color:Colors.green),
    Task(image:"V",title:"View candidates",date:"April. 29,2023",color:Colors.yellow),
    Task(image:"F",title:"Football cu Drybling",date:"April. 29,2023",color:Colors.red),
   
];
   
  

  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
       leading: IconButton(
    icon: Icon(Icons.arrow_back_ios, color: Color.fromARGB(255, 246, 111, 0)),
    onPressed: () => Navigator.of(context).pop(),
  ),
        title: Text("Todo list"),
        actions: [
          Icon(Icons.more_vert)
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/todo.png",height: MediaQuery.sizeOf(context).height*0.2,)
            ,
            
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: const Text(
                'Tasks list',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
           Expanded(
             child: ListView.builder(
              itemCount: Tasks.length,
              itemBuilder: (ctx,idx)=> SingleTodo(Tasks[idx].image.toString(),Tasks[idx].title.toString(), Tasks[idx].date.toString(), Tasks[idx].color)
              ),
           ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: Color.fromARGB(255, 246, 111, 0),
                  margin: const EdgeInsets.only(bottom:40),
                  padding: const EdgeInsets.only(right:20,left :20),
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 246, 111, 0),
                foregroundColor:Colors.white,
                elevation:0,
                textStyle: TextStyle(
                  fontSize: 18,
                fontWeight: FontWeight.bold)),
                    onPressed: () {},
                    child: const Text('Create task'),  // trying to move to the bottom
                  ),
                ),
              )

          
        
          
          ],
        ),
      ),
    );
  }
}
