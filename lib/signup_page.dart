import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    List imsges = [
      "g.png",
      "t.png",
      "f.png"
    ];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: w,
            height: h*0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "img/signup.png"
                    ),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: [
                SizedBox(height: h*0.14,),
                CircleAvatar(
                  backgroundColor: Colors.white70,
                  radius: 60,
                  backgroundImage: AssetImage(
                    "img/profile1.png"
                  ),
                )
              ],
            ),

          ),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.5)
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                        prefixIcon: Icon(Icons.email,color: Colors.deepOrangeAccent,),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width:  1.0
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width:  1.0
                            )
                        )

                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.5)
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                       hintText: "password",
                        prefixIcon: Icon(Icons.password,color: Colors.deepOrangeAccent,),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width:  1.0
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width:  1.0
                            )
                        )

                    ),
                  ),
                ),
                SizedBox(height: 20,),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 170),
            child: RichText(
                text: TextSpan(
                  recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
                  text: "Have an account?",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.bold
                  )
                ),),
          ),
          SizedBox(height: 70,),
          Container(
            width: w*0.5,
            height: h*0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(
                        "img/loginbtn.png"
                    ),
                    fit: BoxFit.cover
                )
            ),
            child: Container(
              alignment: Alignment.center,
              child: Text("Sign Up",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white
                ),
              ),
            ),

          ),
          SizedBox(height: w*0.08),
          RichText(text: TextSpan(
              text: "Sing up using one of the following methods",
              style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 15
              ),

          )),
          Wrap(
            children: List<Widget>.generate(3,
                    (index){
                         return Padding(
                           padding: EdgeInsets.all(10.0),
                           child: CircleAvatar(
                             radius: 30,
                             backgroundColor: Colors.deepOrangeAccent[500],
                             child: CircleAvatar(
                               radius: 25,
                               backgroundImage: AssetImage(
                                 "img/"+imsges[index]
                               ),
                             ),
                           ),
                         );
                    }
            ),
          )

        ],
      ),
    );
  }
}
