import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
          fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            // image: DecorationImage(
            //     // image: AssetImage("assets/image.jpeg"),
            //      fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.18,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffBCB6B0).withOpacity(0.2),
                      // image: DecorationImage(
                      //     // image: AssetImage("assets/irfan hd.png")
                      //     )
                          ),
                ),
              
          
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: Column(
               children: [
                 
                 TextField(
                  
                cursorColor: Colors.white,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                 fillColor: Colors.grey,
                             enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70, width: 2.0),
                ),
                            contentPadding: EdgeInsets.only(top: 20, left: 20),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            hintText: "${auth.currentUser!.displayName}",
                             filled: true,

                  
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff40dedf),
                              ),
                            ),
                    
                          ),
                 ),
                 SizedBox(height: 10,),
       TextField(
                cursorColor: Colors.white,
               
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
              
              decoration: InputDecoration(
                 filled: true,

                  fillColor: Colors.grey,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70, width: 2.0),),
                contentPadding: EdgeInsets.only(top: 20, left: 20),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
              
                hintText: "${auth.currentUser!.email}",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff40dedf),
                  ),
                ),
                
              ),
              
          ),
            SizedBox(
                    height: MediaQuery.of(context).size.height/40,
                  ),
            //  InkWell(
            //        child: Card(
            //             color: Colors.amber,
            //             child: ListTile(
            //               leading: Icon(
            //                 Icons.edit,
            //                 size: 20,
            //                 color: Colors.white70,
            //               ),
                          
            //               title: Text(
            //                 "Edit",
            //                 style: TextStyle(
            //                     fontSize: 18,
            //                     color: Colors.white,
            //                     fontWeight: FontWeight.w400),
            //               ),
            //             ),
            //           ),  
            //      ),
               
            
            //      InkWell(
            //        child: Card(
            //             color: Colors.amber,
            //             child: ListTile(
            //               leading: Icon(
            //                 Icons.lock,
            //                 size: 20,
            //                 color: Colors.white70,
            //               ),
            //               title: Text(
            //                 "Change Password",
            //                 style: TextStyle(
            //                     fontSize: 18,
            //                     color: Colors.white,
            //                     fontWeight: FontWeight.w400),
            //               ),
            //             ),
            //           ),
            //      ),
             SizedBox(
                    height: MediaQuery.of(context).size.height/40,
                  ),
                 Card(
                      color:Colors.red,
                      child: ListTile(
                        onTap: (){
                          auth.signOut();
                        },
                        leading: Icon(
                          Icons.logout,
                          size: 20,
                          color: Colors.white70,
                        ),
                        title: Text(
                          "Sign Out ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                
               ],
             ),
           ),
       




               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
