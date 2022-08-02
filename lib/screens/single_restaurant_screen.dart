import 'package:flutter/material.dart';
import 'package:food_order/designs/custom_text.dart';
import 'package:food_order/models/restaurant.dart';

class SingleRestaurantScreen extends StatelessWidget {
  const SingleRestaurantScreen({Key? key,required this.restaurant}) : super(key: key);
  final Restaurant restaurant;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                      image: AssetImage('${restaurant.imageUrl}')
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      icon:Icon(Icons.arrow_back),
                      color: Colors.white,),
                    Icon(Icons.favorite,color: Colors.red,),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(fs: 20, fw: FontWeight.bold, clr: Colors.black, text: '${restaurant.name}'),
                    CustomText(fs: 20, fw: FontWeight.bold, clr: Colors.black, text: '${restaurant.address}'),
                  ],
                ),
                CustomText(fs: 20, fw: FontWeight.bold, clr: Colors.black, text: '0.2 Miles'),


              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){}, child: Text('Review')),
                ElevatedButton(onPressed: (){}, child: Text('Contact')),
              ],
            ),
          ),
          CustomText(fs: 20, fw: FontWeight.bold, clr: Colors.black, text: 'Menu'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 40,right: 40),
              child: GridView.builder(
                shrinkWrap: true,
                primary: false,

                itemCount: restaurant.menu!.length,
                scrollDirection: Axis.vertical,
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 80
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('${restaurant.menu![index].imageUrl}')
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20) )
                              ),
                              height: 60,

                            ),
                            Positioned(left:20,bottom:30, child: CustomText(fs: 15, fw: FontWeight.bold, clr: Colors.white, text: '${restaurant.menu![index].name}')),
                            Positioned(left:20,bottom:10,child: CustomText(fs: 15, fw: FontWeight.bold, clr: Colors.white, text: '${restaurant.menu![index].price}')),
                          ],
                        ),

                      ],
                    ),
                  );
                },



              ),
            ),
          )

        ],
      ),
    );
  }
}
