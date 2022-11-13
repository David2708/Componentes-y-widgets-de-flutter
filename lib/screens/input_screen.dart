import 'package:flutter/material.dart';

import 'package:componentes_flutter/widgets/widgets.dart';


class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name' : 'David',
      'last_name' : 'Jadid',
      'email' : 'david@google.com',
      'password' : '1234567',
      'role' : 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Input y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
          
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre del usuario', formProperty: 'first_name', formValues: formValues, ),
                const SizedBox(height: 30,),
          
                CustomInputField(labelText: 'Apellido', hintText: 'Apellido del usuario', formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 30,),
          
                CustomInputField(labelText: 'Correo', hintText: 'Correo del usuario', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30,),
          
                CustomInputField(labelText: 'Password', hintText: 'Password del usuario', keyboardType: TextInputType.emailAddress, obscureText: true, formProperty: 'password', formValues: formValues, ),
                const SizedBox(height: 30,),

                DropdownButtonFormField(
                  items: const[
                    DropdownMenuItem(value: 'Admin', child: Text('Admin'),),
                    DropdownMenuItem(value: 'SuperUser', child: Text('SuperUser'),),
                    DropdownMenuItem(value: 'Developer', child: Text('Developer'),),
                    DropdownMenuItem(value: 'Jr. developer', child: Text('Jr. developer'),),
                  ], 
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  }
                ),
          
                ElevatedButton( 
                  child: const Center(child: Text('Guardar')),
                  onPressed: (){
                    
                    FocusScope.of(context).requestFocus( FocusNode() );

                    if (!myFormKey.currentState!.validate()) {
                      print('formualrio no valido');
                      return;
                    }

                    print(formValues);
                  }, 
                )
                
          
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}

