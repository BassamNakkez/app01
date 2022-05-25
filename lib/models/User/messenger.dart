import 'package:app03/models/User/users.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



Widget ChatItemBuilder(ModelUser user)=>Row(
  children: [
    Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children:const  [
        CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage('https://babyy.cc/wp-content/uploads/2019/05/1315-4.jpg'),
        ),
        CircleAvatar(
          radius: 7,
          backgroundColor: Colors.white,
        ),
        CircleAvatar(
          radius: 6,
          backgroundColor: Colors.lightGreen,
        ),
      ],
    ),
    const SizedBox(
      width: 7,
    ),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
              '${user.name}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style:  const TextStyle(
                fontSize: 17.5,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
          ),
            ),
          Row(
            children: [
               Text(
                '${user.text}' ,
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Container(
                width: 7.5,
                height:7.5,
                decoration:const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(
                width: 3.4,
              ),

              Text(
                  '${user.time}',
              ),
            ],
          ),
        ],
      ),
    ),
  ],
);


Widget StoryItemBuilder(ModelUser user)=>SizedBox(
  width: 60,
  child: Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children:const  [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage('https://babyy.cc/wp-content/uploads/2019/05/1315-4.jpg'),

          ),
          CircleAvatar(
            radius: 7,
            backgroundColor: Colors.white,
          ),
          CircleAvatar(
            radius: 6,
            backgroundColor: Colors.lightGreen,
          ),
        ],
      ),
       Text(
        '${user.name}',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 16,
          // decorationStyle:
        ),
      ),
    ],
  ),
);



class messenger extends StatelessWidget
{
  List<ModelUser> users= [
    ModelUser(
        name:'Bassam Nakkez' , text: 'Hi! How are you?', time: '2:15 pm',
        ),
    ModelUser(
      name:'Mohammad Ahmad' , text: 'Hi! How are you?', time: '8:45 Am',
    ),
    ModelUser(
      name:'Ali' , text: 'نازل بكرى ', time: '4:12 pm',
    ),
    ModelUser(
      name:'Amjad Mansour' , text: 'شو صار معك ؟', time: '9:45 pm',
    ),
    ModelUser(
      name:'Osama' , text: 'مرحبا كيفك', time: '11:15 pm',
    ),
    ModelUser(
      name:'Sami Almasri' , text: 'طيب مو مشكلة', time: '7:15 pm',
    ),
    ModelUser(
      name:'Mohammad Nakkez' , text: 'حاكين أنا وصلت ', time: '12:15 pm',
    ),
    ModelUser(
      name:'Bassam Nakkez' , text: 'Hi! How are you?', time: '2:15 pm',
    ),
    ModelUser(
      name:'Amjad Mansour' , text: 'شو صار معك ؟', time: '9:45 pm',
    ),
    ModelUser(
      name:'Osama' , text: 'مرحبا كيفك', time: '11:15 pm',
    ),
    ModelUser(
      name:'Sami Alias' , text: 'طيب مو مشكلة', time: '7:15 pm',
    ),
    ModelUser(
      name:'Mohammad Nakkez' , text: 'حاكين أنا وصلت ', time: '12:15 pm',
    ),
    ModelUser(
      name:'Bassam Nakkez' , text: 'Hi! How are you?', time: '2:15 pm',
    ),
    ModelUser(
      name:'Bassam Nakkez' , text: 'Hi! How are you?', time: '2:15 pm',
    ),
    ModelUser(
      name:'Amjad Mansour' , text: 'شو صار معك ؟', time: '9:45 pm',
    ),
    ModelUser(
      name:'Osama' , text: 'مرحبا كيفك', time: '11:15 pm',
    ),
    ModelUser(
      name:'Sami Alias' , text: 'طيب مو مشكلة', time: '7:15 pm',
    ),
    ModelUser(
      name:'Mohammad Nakkez' , text: 'حاكين أنا وصلت ', time: '12:15 pm',
    ),
    ModelUser(
      name:'Bassam Nakkez' , text: 'Hi! How are you?', time: '2:15 pm',
    ),
    ModelUser(
      name:'Bassam Nakkez' , text: 'Hi! How are you?', time: '2:15 pm',
    ),
    ModelUser(
      name:'Mohammad Ahmad' , text: 'Hi! How are you?', time: '8:45 Am',
    ),
    ModelUser(
      name:'Ali' , text: 'نازل بكرى ', time: '4:12 pm',
    ),
    ModelUser(
      name:'Amjad Mansour' , text: 'شو صار معك ؟', time: '9:45 pm',
    ),
    ModelUser(
      name:'Osama' , text: 'مرحبا كيفك', time: '11:15 pm',
    ),
    ModelUser(
      name:'Sami Almasri' , text: 'طيب مو مشكلة', time: '7:15 pm',
    ),
    ModelUser(
      name:'Mohammad Nakkez' , text: 'حاكين أنا وصلت ', time: '12:15 pm',
    ),
  ];

   messenger({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     // backgroundColor: Colors.grey[700],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[800],
        titleSpacing: 9.0,
        title: Row(
        children: const [
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.red,
            backgroundImage: NetworkImage('https://babyy.cc/wp-content/uploads/2019/05/1315.jpg'),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Chat',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ]
        ),
        actions:  [
          IconButton(onPressed: (){}, icon:
           const CircleAvatar(
             radius: 17,
             backgroundColor: Colors.black54,
             child:  Icon(
              Icons.camera_alt,
               color: Colors.white,
           ),
           ),
          ),
          IconButton(onPressed: (){}, icon:
          const CircleAvatar(
            radius: 17,
            backgroundColor: Colors.black54,
            child:  Icon(
              Icons.edit,
              color: Colors.white,
            ),
          ),
          ),

        ],
    ),
      //part 1

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           children:[
             Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(25),
                 color: Colors.grey[300],
               ),
               width: double.infinity,
               height: 40,
               padding: const EdgeInsets.all(6),
               child: Row(
                 children: const [
                   Icon(
                   Icons.search,
                 ),
                   SizedBox(
                     width:4,
                   ),
                   Text(
                     'Search',
                     style: TextStyle(
                       fontSize: 15,
                     ),
                   ),
               ],
               ),
             ),
             const SizedBox(
               height: 10,
             ),
             SizedBox(
               height: 100,
               child: ListView.separated(
                 scrollDirection: Axis.horizontal,
                 itemBuilder: (BuildContext context, int index)=> StoryItemBuilder(users[index]),
                 separatorBuilder: (BuildContext context, int index) =>  const SizedBox(
                   width: 10
                 ),
                 itemCount: users.length,
               ),
             ),
             const SizedBox(
               height: 10,
             ),
             ListView.separated(
                 physics: const NeverScrollableScrollPhysics(),
                   shrinkWrap: true,
                   itemBuilder: (context,index)=>ChatItemBuilder(users[index]),
                   separatorBuilder: (context,index)=>Padding(
                     padding: const EdgeInsets.symmetric(vertical: 9),
                     child: Container(height: 0.18,
                     color: Colors.grey,
                     width: double.infinity,
                     ),
                   ),
                   itemCount: users.length),
           ],
      ),
        ),
      ),
    );
  }

}



