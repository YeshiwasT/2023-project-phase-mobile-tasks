import 'package:add_task/todo_list/Model/task_model.dart';
import 'package:add_task/todo_list/widgets/single_todo.dart';
import 'package:flutter/material.dart';
class TodoDetail extends StatefulWidget {
  const TodoDetail({super.key});

  @override
  State<TodoDetail> createState() => _TodoDetailState();
}

class _TodoDetailState extends State<TodoDetail> {

  final _formKey = GlobalKey<FormState>();  

  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
        title: Text("Task Detail"),
       leading: IconButton(
    icon: Icon(Icons.arrow_back_ios, color: Color.fromARGB(255, 246, 111, 0)),
    onPressed: () => Navigator.of(context).pop(),
  ),
        actions: [
          Icon(Icons.more_vert)
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Center(

            child: Image.asset("assets/todo_detail.jpeg",height: MediaQuery.sizeOf(context).height*0.3,)),
         
       const Text(
                  'Title',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                 Container(
                   padding: EdgeInsets.all(8),
                   margin: EdgeInsets.all(8),
 width: double.infinity,
                  color: Color.fromARGB(255, 226, 224, 224),
                                     child: const Text(
                    'UI/UX App Desing',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                                 ),
                 ), 
        const Text(
                  'Description',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                  Container(
                                       margin: EdgeInsets.all(8),

                     padding: EdgeInsets.all(8),
 width: double.infinity,
                  color: Color.fromARGB(255, 226, 224, 224),
                                      child: const Text(
                      "First I have to animate the logo later prototyping my desing .its very imortant", 
                         textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                                  ),
                  ), 
              const Text(
                  'Deadline',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              
                Container(
                                     margin: EdgeInsets.all(8),

                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  color: Color.fromARGB(255, 226, 224, 224),
                  
                  child: const Text(
                    'April 20/2023',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ), 
          
        
          
          ],
        ),
      ),
    );
  }
}
