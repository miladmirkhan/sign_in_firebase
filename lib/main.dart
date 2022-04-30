import 'package:flutter/material.dart';

void main() {
  runApp(const appRun());
}

class appRun extends StatelessWidget {
  const appRun({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainScreen(),
    );
  }
}

class mainScreen extends StatefulWidget {
  
  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
TextEditingController idController=TextEditingController();

TextEditingController passController=TextEditingController();

 final formKey= GlobalKey<FormState>();

 bool _showPass=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 217, 217),
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 85, 164, 228) ,
        title: Text("Sign In"),
        centerTitle: true,
      ),


      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                          
                          SizedBox(
                            width: 300,
                            child:  Text("ID", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                         SizedBox(
                         height: 70,
                         width: 300,
                         child: TextFormField(
                         //  initialValue:,
                           textInputAction: TextInputAction.next,//when press enter automaticlly goto next textField
                         controller: idController,
                        
                          decoration: InputDecoration(
                            
                             labelStyle: TextStyle(
                               
                color: Color.fromARGB(255, 85, 164, 228),
                fontSize: 20,
            ),
                          // labelText: "ID",
                              filled: true,
                              fillColor:  Color(0xFFFFFFFF),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.green),
                            ),
                             enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.grey[100]!),
                            ),
                            hintText: "ID",
                           
                          ),
                           
                           validator: (value)=>value !=null && value.isEmpty?'Enter Your ID':null,//is null show enter a name
                         ),
                       ),    
        

        SizedBox(
                            width: 300,
                            child:  Text("Password", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
          SizedBox(
                         height: 70,
                         width: 300,
                         child: TextFormField(
                         //  initialValue:,
                           textInputAction: TextInputAction.next,//when press enter automaticlly goto next textField
                         controller: passController,
                        obscureText: _showPass,
                        obscuringCharacter: '*',
                          decoration: InputDecoration( 
                            
                             labelStyle: TextStyle(
                color: Color.fromARGB(255, 85, 164, 228),
                fontSize: 20,
            ),
                           //labelText: "Password",
                              filled: true,
                              fillColor:  Color(0xFFFFFFFF),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.green),
                            ),
                             enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.grey[100]!),
                            ),
                            hintText: "Password",
                           suffixIcon: IconButton(
                    icon: Icon(
                        _showPass ? Icons.visibility : Icons.visibility_off),     
                    onPressed: () {
                      setState(() {
                        _showPass = !_showPass;
                      });
                    })),
                          
                           
                           validator: (value)=>value !=null && value.isEmpty?'Enter Your Password':null,//is null show enter a name
                         ),
                       ),    
        
                        SizedBox(height: 30,),
        
                        Container(
                          height: 50,
                          width: 150,
                          child: ElevatedButton(onPressed: (){
                          
                              final form=formKey.currentState!;
                                    final isValid=form.validate();//cheeks if our form validated
                                              
                                        if(isValid){
                                    
                                   
                                    }else{
                                 
                                          }
                          
                          }, 
                          
                          
                          child: Text('Sign in',style: TextStyle(fontSize: 20,),),)
                        ),
        
        
                      ],
            ),
        ),
      ) ,
    );
  }
}