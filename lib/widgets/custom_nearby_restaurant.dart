import 'package:flutter/material.dart';
import 'package:food_order/data/data.dart';
import 'package:food_order/designs/custom_text.dart';
import 'package:food_order/screens/single_restaurant_screen.dart';

class CustomNearbyRestaurant extends StatelessWidget {
  const CustomNearbyRestaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SingleRestaurantScreen(restaurant: restaurants[index]),));

            },
            child: Container(
              margin: EdgeInsets.only(bottom: 10,left: 10,right: 10),
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Expanded(
                    flex:1,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('${restaurants[index].imageUrl}')
                        ),
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                  Expanded(flex:2,child: Container(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      CustomText(fs: 17, fw: FontWeight.bold, clr: Colors.black.withOpacity(0.5), text: '${restaurants[index].name}'),
                      CustomText(fs: 15, fw: FontWeight.bold, clr: Colors.black.withOpacity(0.5), text: '${restaurants[index].address}'),
                      CustomText(fs: 15, fw: FontWeight.bold, clr: Colors.black.withOpacity(0.5), text: '${restaurants[index].rating}'),
                    ],),
                  ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
