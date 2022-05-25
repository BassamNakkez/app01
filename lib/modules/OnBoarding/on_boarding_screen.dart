import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String body;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.body
  });

}

class OnBoardingScree extends StatelessWidget {

  List<OnBoardingModel> boarding=
  [
    OnBoardingModel(
      image: 'assets/images/on_boarding.jpg',
      title: 'Screen Title 1',
      body: 'First SubTitle 1',
    ),
    OnBoardingModel(
      image: 'assets/images/on_boarding.jpg',
      title: 'Screen Title 2',
      body: 'Second  SubTitel 2',
    ),
    OnBoardingModel(
      image: 'assets/images/on_boarding.jpg',
      title: 'Screen Title 3',
      body: 'Third SubTitle 3',
    ),
  ];

  var boardController = PageController();

  OnBoardingScree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
          children: [
              Expanded(
                child: PageView.builder(
                  controller: boardController,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index)=>buildBoardingItem (boarding[index]),
                  itemCount: boarding.length,
    ),
              ),
            Container(
              padding:const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 0
              ),
              child: Row(
                children: [
                   Padding(
                    padding:  const EdgeInsets.symmetric(horizontal:15.0,
                    vertical: 0,
                    ),
                    child: SmoothPageIndicator(
                        controller: boardController,
                        effect:const  ExpandingDotsEffect(
                          //expansionFactor: 4,
                          activeDotColor: Colors.deepOrange,
                          dotColor:Colors.grey,
                          dotHeight: 10,
                          dotWidth: 10,
                          spacing: 10,
                        ),
                        count: boarding.length),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: FloatingActionButton(onPressed: ()
                    {
                      boardController.nextPage(
                          duration: const Duration(
                            seconds:2,
                          ) ,
                          curve: Curves.fastLinearToSlowEaseIn );
                    },
                      backgroundColor: Colors.deepOrange,
                      child : const Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
    );
  }
}

Widget buildBoardingItem (OnBoardingModel model)=>
    Column(
  
    crossAxisAlignment: CrossAxisAlignment.start,
  
    children: [
       Stack(
         alignment: AlignmentDirectional.bottomCenter,
         children: [
           Container(
         height:550 ,
         width: double.infinity,
         decoration:  BoxDecoration(
           image: DecorationImage(
               image: AssetImage(model.image),
               fit: BoxFit.cover),
         ),
         ),
           Container(
             decoration:const  BoxDecoration(
               borderRadius:BorderRadiusDirectional.only(
                 topEnd: Radius.circular(60),
               ) ,
               color: Colors.white,
             ),
             width: double.infinity,
             height: 60,

           ),
         ],
       ),


         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 8),
           child: Container(
            color:Colors.white ,
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text(

                  model.title,

                  style:const TextStyle(

                    fontSize: 30,

                    fontWeight: FontWeight.bold,

                  ) ,

                ),
                const SizedBox(
                  height: 10,
                ),
                Text(

                  model.body,

                  style:const TextStyle(
                    color: Colors.black54,
                    fontSize:20,

                  ),

                ),

              ],

            ),

        ),
         ),

    ],

);

