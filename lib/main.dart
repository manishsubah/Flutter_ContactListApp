import 'package:contact_list_app/contact_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ContactApp());
}
class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Contact App',
      debugShowCheckedModeBanner: false,
     theme: ThemeData(primarySwatch: Colors.teal),
      home: ContactListScreen(),
   );
  }
}

class ContactListScreen extends StatelessWidget {
  ContactListScreen({super.key});

  final List<Contact> contacts = [
    Contact(name: 'Alice', phoneNumber: '123-456-7890'),
    Contact(name: 'Bob', phoneNumber: '987-654-3210'),
    Contact(name: 'Charlie', phoneNumber: '555-555-5555'),
    Contact(name: 'Manish', phoneNumber: '99999 11111'),
    Contact(name: 'Ravi', phoneNumber: '88888 22222'),
    Contact(name: 'Sneha', phoneNumber: '77777 33333'),
    Contact(name: 'Amit', phoneNumber: '66666 44444'),
    Contact(name: 'Alice', phoneNumber: '123-456-7890'),
    Contact(name: 'Bob', phoneNumber: '987-654-3210'),
    Contact(name: 'Charlie', phoneNumber: '555-555-5555'),
    Contact(name: 'Manish', phoneNumber: '99999 11111'),
    Contact(name: 'Ravi', phoneNumber: '88888 22222'),
    Contact(name: 'Sneha', phoneNumber: '77777 33333'),
    Contact(name: 'Amit', phoneNumber: '66666 44444'),
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: const Text("Contact List")),
     body: ListView.builder(
       itemCount: contacts.length,
         itemBuilder:(context, index) {
         final contact = contacts[index];
         return ListTile(
           leading: const CircleAvatar(child: Icon(Icons.person)),
            title: Text(contact.name),
           subtitle: Text(contact.phoneNumber),
           trailing: const Icon(Icons.phone, color: Colors.green),
         );
       },
     ),
     floatingActionButton: FloatingActionButton(onPressed: () {
       ScaffoldMessenger.of(context).showSnackBar(
         const SnackBar(content: Text('Feature coming soon!'))
       );
     },
       child: const Icon(Icons.add),
     ),
   );
  }
}

