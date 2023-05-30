import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green ,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> _bottomNavBarItems = [
      BottomNavigationBarItem(
        icon: Icon(Icons.perm_media),
        label: 'Home',
      ),

      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ];
    int _currentIndex = 0;

    return Scaffold(
      // floatingActionButton: FloatingActionButton.small(
      //   backgroundColor:  Colors.black,
      //   onPressed: () {},
      //   child: const Icon(
      //     Icons.navigate_before,
      //   ),
      // ),
      appBar: AppBar(title: Text("한국인 ",),
        leading: const BackButton(
          color: Colors.black, // <-- SEE HERE
        ),
        centerTitle: true,

      actions: [
        Icon(
        Icons.notifications,
      ),
      ],),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
            Container( margin: EdgeInsets.only(top: 20.0,left: 10.0),
              child:   CircleAvatar(
                  radius:30.0,
                  backgroundImage: AssetImage('assets/images/img.png'),
                ),
            ),
               SizedBox(width: 20.0,),

                Text("안 한국에서 살았어요",
                style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                Icon(
                  Icons.check_box_rounded,color: Colors.green,
                ),
                Text("한국인 ",
                ),
                SizedBox(width: 40.0),
                ElevatedButton(
                    onPressed: (){}, child: Text("한국인 ",
                ),
                  style: ElevatedButton.styleFrom(

                    shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6.0))),
                  ),)
              ],
            ),
           Container(margin: EdgeInsets.only(left: 10.0,top: 10.0),
             child: Align(alignment: Alignment.topLeft,
                child: Text("안 한국에서 살았어요안 한국에서 살았어요안 ",
                  style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
              ),
           ),
            Container(margin: EdgeInsets.only(left: 10.0,right: 10.0,
            top:10.0),
                child: Text("저는 한국어로 에세이를 작성해드리겠습니다. 아래에 한국어로 작성된 에세이를 확인해주세요.\n 첫째로, 운동은 신체적인 건강을 유지하고 개선하는 데 도움을 줍니다. 지원합니다. 또한 근육을 강화하고 유연성을 향상시켜 우리의 체형을 개선시킵니다. 운동은 또한 신체적인 스트레스를 감소시키고 면역 체계를 강화하여 질병에 대한 저항력을 높이는 데 도움이 됩니다.\n 운동은 건강한 삶을 위해 중요한 역할을 합니다. 운동을 통해 우리는 신체적인 힘과 체력을 키우고, 정신적인 안정과 행복을 찾을 수 있습니다. 이 에세이에서는 운동의 중요성과 건강에 미치는 긍정적인 영향에 대해 논의하겠습니다.")),
            SizedBox(height: 20,),
            Column(children:[Row(
              children: [
                Chip(
                  elevation:2,
                  padding: EdgeInsets.all(8),
                  backgroundColor: Colors.grey[50],
                  shadowColor: Colors.black,
                  label: Text(
                    '#2023',
                    style: TextStyle(fontSize: 20),
                  ), //Text
                ),
                Chip(
                  elevation: 2,
                  padding: EdgeInsets.all(5),
                  backgroundColor: Colors.grey[50],
                  shadowColor: Colors.black,
                  label: Text(
                    '#TODAYMONDAY',
                    style: TextStyle(fontSize: 20),
                  ), //Text
                ),
                Chip(
                  elevation: 2,
                  padding: EdgeInsets.all(5),
                  backgroundColor: Colors.grey[50],
                  shadowColor: Colors.black,
                  label: Text(
                    '#TOP',
                    style: TextStyle(fontSize: 20),
                  ), //Text
                ),
                Chip(
                  elevation: 2,
                  padding: EdgeInsets.all(5),
                  backgroundColor: Colors.grey[50],
                  shadowColor: Colors.black,
                  label: Text(
                    '#POPS',
                    style: TextStyle(fontSize: 20),
                  ), //Text
                ),
              ],
            ),
              Row(
                children: [
                  Chip(
                    elevation: 2,
                    padding: EdgeInsets.all(8),
                    backgroundColor: Colors.grey[50],
                    shadowColor: Colors.black,
                    label: Text(
                      '#WOW',
                      style: TextStyle(fontSize: 20),
                    ), //Text
                  ),
                  Chip(
                    elevation: 2,
                    padding: EdgeInsets.all(8),
                    backgroundColor: Colors.grey[50],
                    shadowColor: Colors.black,
                    label: Text(
                      '#ROW',
                      style: TextStyle(fontSize: 20),
                    ), //Text
                  ),
                ],
              ),]
            ), //Chip
            SizedBox(height: 10,),
            Container(height: 300,width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/images/img.png')
            ),
            SizedBox(height: 8.0,),
            Container(margin: EdgeInsets.only(left: 10.0,
                top:10.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.favorite
                  ),
                  SizedBox(width: 8.0,),
                  Text("4"),
                  SizedBox(width: 8.0,),
                  Icon(
                    Icons.chat_bubble,
                  ),
                  SizedBox(width: 8.0,),
                  Text("4"),
                  SizedBox(width: 8.0,),
                  Icon(
                    Icons.comment_bank_outlined,
                  ),
                  SizedBox(width: 8.0,),


                ],
              ),
            ),
            Container(margin: EdgeInsets.only(left: 30.0,
                top:10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius:20.0,
                    backgroundImage: AssetImage('assets/images/img.png'),
                  ),
                  SizedBox(width: 10.0,),
                  Text("저는 한국어로 에세이를 작성해드리겠습니다"),
                  SizedBox(width: 20.0,),
              PopupMenuButton(
                // add icon, by default "3 dot" icon
                // icon: Icon(Icons.book)
                itemBuilder: (context){
                  return [
                    PopupMenuItem<int>(
                      value: 0,
                      child: Text("My Account"),
                    ),

                    PopupMenuItem<int>(
                      value: 1,
                      child: Text("Settings"),
                    ),

                    PopupMenuItem<int>(
                      value: 2,
                      child: Text("Logout"),
                    ),
                  ];
                },),
                ],
              ),
            ),
            Container(margin: EdgeInsets.only(left: 30.0,right: 10.0,
                top:10.0),
    child: Column(
      children: [
        Text("마지막으로, 운동은 사회적인 측면에서도 중요합니다. 운동은 친구나 동료들과 함께 활동할 수 있는 기회를 제공하며, 사회적인 관계를 형성하고 유대감을 도모합니다. 또한 운동은 개인의 성취를 증진시키고 목표를 달성하는 데 도움을 줍니다. 경쟁적인 운동은 리더십, 팀워크 및 규율을 배우는 데 도움이 되며, 이는 일상 생활에서도 유용한 기술입니다."),
       Row(
          children: [
            Icon(
              Icons.favorite,
            ),
            SizedBox(width: 8.0,),
            Text("4"),
            SizedBox(width: 8.0,),
            Icon(
              Icons.chat_bubble,
            ),
            SizedBox(width: 8.0,),
            Text("4"),



          ],
        ),],
    )),
            Container(margin: EdgeInsets.only(left: 50.0,
                top:10.0),

              child: Row(
                children: [
                  CircleAvatar(
                    radius:20.0,
                    backgroundImage: AssetImage('assets/images/img.png'),
                  ),
                  SizedBox(width: 10.0,),
                  Text("저는 한국어로",
                  style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 5.0,),
                 Text("한국어로",
                     style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 20.0,),
                  PopupMenuButton(
                    // add icon, by default "3 dot" icon
                    // icon: Icon(Icons.book)
                    itemBuilder: (context){
                      return [
                        PopupMenuItem<int>(
                          value: 0,
                          child: Text("My Account"),
                        ),

                        PopupMenuItem<int>(
                          value: 1,
                          child: Text("Settings"),
                        ),

                        PopupMenuItem<int>(
                          value: 2,
                          child: Text("Logout"),
                        ),
                      ];
                    },),
                ],
              ),
            ),
            Container(margin: EdgeInsets.only(left:50.0,right: 10.0,
                top:10.0),
                child: Column(
                  children: [
                    Text("마지막으로, 운 형성하 경쟁적한 기술입니다."),
                    SizedBox(width: 20.0,),
                    Container(margin: EdgeInsets.only(left:70.0,right: 10.0,top: 10.0),
                      child: Row(
                        children: [
                          Icon(
                              Icons.favorite
                          ),
                          SizedBox(width: 8.0,),
                          Text("4"),
                          SizedBox(width: 8.0,),
                          Icon(
                            Icons.chat_bubble,
                          ),



                        ],
                      ),
                    ),
                  ],
                )),

          ],
        ),
      ),
      bottomNavigationBar:Row(
        children:const  [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(Icons.photo_album),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text("마지막으로",
                style: TextStyle(color: Colors.grey)),
          ),
         SizedBox(width: 150.0,),
         Padding(
           padding:  EdgeInsets.all(15.0),
           child: Text("마지막",
           style: TextStyle(color: Colors.grey),),
         ),
        ],
      )
    );
  }
}
