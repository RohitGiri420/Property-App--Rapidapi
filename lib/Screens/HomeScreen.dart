import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey6,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Icon(
                      Icons.menu,
                      size: 22,
                      color: Colors.black45,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(color: Colors.grey.shade200)),
                  ),
                  Column(
                    children: [
                      Text(
                        "Current Location",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black45,
                            fontFamily: 'font1'),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 16,
                            color: CupertinoColors.systemBlue,
                          ),
                          Text("Mumbai, Ind",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'font1',
                                  fontWeight: FontWeight.w600)),
                        ],
                      )
                    ],
                  ),
                  Container(
                    child: Icon(
                      CupertinoIcons.sort_up,
                      size: 22,
                      color: Colors.black45,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(color: Colors.grey.shade200)),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Container(
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(8)),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(8)),
                      prefixIcon: Icon(
                        CupertinoIcons.search,
                        color: Colors.black54,
                      ),
                      hintText: "New York",
                      hintStyle: TextStyle(
                          fontSize: 14,
                          fontFamily: 'font1',
                          fontWeight: FontWeight.w400,
                          color: Colors.black45)),
                ),
              ),
          
              SizedBox(height: 30,),
          
              Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    'asset/images/a.jpg',
                    fit: BoxFit.contain,
                  )),
          
              SizedBox(height: 30,),
          
              Column(
                children: [
                  Stack(
                    children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey
                      ),
                      height: 230,
                      width: double.infinity,
                      clipBehavior: Clip.antiAlias,
                      child: Image.network(
                      'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',fit: BoxFit.fill,
                                      ),
                    ),
                      Padding(
                        padding:EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(6)
                          ),
                          height: 40,
                          width: 120,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("₹1000",style: TextStyle(fontWeight: FontWeight.w900,fontFamily: 'font1'),),
                              Text("/Month",style: TextStyle(fontFamily: 'font1',color: Colors.black45),)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    color: CupertinoColors.systemGrey6,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8,left: 8),
                              child: Text("Whitespace House",style: TextStyle(fontFamily: 'font1',fontWeight: FontWeight.w900,fontSize: 18),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8,bottom: 8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.location_on,color: Colors.black45,size: 20,),
                                  SizedBox(width: 6,),
                                  Text("New York, Usa",style: TextStyle(fontFamily: 'font1',color: Colors.black54,fontSize: 16),)
                                ],
                              ),
                            )
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: CupertinoColors.white,
                            child: IconButton(onPressed: () {

                            },
                            icon: Icon(CupertinoIcons.arrow_down_right),),

                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
