import 'package:add_task/todo_list/Model/task_model.dart';
import 'package:add_task/todo_list/widgets/single_todo.dart';
import 'package:flutter/material.dart';
class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {

  final _formKey = GlobalKey<FormState>();  

  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
           
            Center(
              child: Container(
                
                padding: EdgeInsets.all(20),
                child: const Text(
                  'Create new task',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
         Form(  
      key: _formKey,  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: <Widget>[  
          Text("Main task name",style: TextStyle(
            color: Color.fromARGB(255, 246, 111, 0))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(  
              
              decoration: const InputDecoration(  
                hintText: 'Enter your name',  
                labelText: 'UI/UX App Design',  
                 border: OutlineInputBorder(
                  borderSide: BorderSide(
                  color: Colors.red, 
                  width: 5.0),
              )
            
              ),  
            
            ),
          ),  
          
          Text("Due date",style: TextStyle(
            color: Color.fromARGB(255, 246, 111, 0)
          ),),

           Container(
            padding: EdgeInsets.all(8),
             child: TextFormField(  
              decoration: const InputDecoration(  
                suffixIcon:const Icon(Icons.calendar_today,
            color: Color.fromARGB(255, 246, 111, 0),),  
              hintText: 'Enter your date of birth',  
              labelText: 'April 29,2023 12:30 AM',  
               
                 border: OutlineInputBorder(
                  borderSide: BorderSide(
                  color: Colors.red, 
                  width: 5.0),
               )
             
                
                     
              ),  
             ),
           ),  
          Text("Description",style: TextStyle(
            color: Color.fromARGB(255, 246, 111, 0))),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(  
              decoration: const InputDecoration(  
                labelText: "First I have to animate the logo later prototyping my desing .its very imortant", 

                  border: OutlineInputBorder(
                  borderSide: BorderSide(
                  color: Colors.red, 
                  width: 5.0),
              ) 
              ),  
            ),
          ),  
         
        ],  
      ),  
    ),
            Container(
              color: Color.fromARGB(255, 246, 111, 0),
              margin: const EdgeInsets.only(top:40),
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
                child: const Text('Add task'),  // trying to move to the bottom
              ),
            )

          
        
          
          ],
        ),
      ),
    );
  }
}
