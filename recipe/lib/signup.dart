// import 'package:flutter/material.dart';

// class SignupScreen extends StatefulWidget {
//   static final String id = 'signup_screen';

//   @override
//   _SignupScreenState createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   final _formKey = GlobalKey<FormState>();
  
//   String? _email;
//   String? _password;
  
  

 

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           height: MediaQuery.of(context).size.height,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 'LogIn',
//                 style: TextStyle(
//                   fontFamily: 'Billabong',
//                   fontSize: 50.0,
//                 ),
//               ),
//               Form(
//                 key: _formKey,
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: <Widget>[
//                     Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 30.0,
//                         vertical: 10.0,
//                       ),
                      
                      
//                       child: TextFormField(
//                         decoration: InputDecoration(labelText: 'Email'),
//                         validator: (input) => !input!.contains('@')
//                             ? 'Please enter a valid email'
//                             : null,
//                         onSaved: (input) => _email = input!,
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 30.0,
//                         vertical: 10.0,
//                       ),
//                       child: TextFormField(
//                         decoration: InputDecoration(labelText: 'Password'),
//                         validator: (input) => input!.length < 6
//                             ? 'Must be at least 6 characters'
//                             : null,
//                         onSaved: (input) => _password = input!,
//                         obscureText: true,
//                       ),
//                     ),
//                     SizedBox(height: 20.0),
//                     Padding(
//                       padding: EdgeInsets.only(
//                         left: 40,
//                         right: 40,
//                       ),
                    
//                             : TextButton(
//                                 onPressed: () => _signUp(),
//                                 child: Text(
//                                   'Sign Up',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 18.0,
//                                   ),
//                                 ),
//                               ),
//                       ),
//                     ),
//                     SizedBox(height: 20.0),
//                     Container(
//                       color: Colors.blue,
//                       padding: EdgeInsets.symmetric(horizontal: 50),
//                       child: TextButton(
//                         onPressed: () => Navigator.pop(context),
//                         child: Text(
//                           'Back to Login',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18.0,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }