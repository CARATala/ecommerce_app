import 'package:ecommerce_app/widgets/categories_widgets.dart';
import 'package:ecommerce_app/widgets/home_appbar.dart';
import 'package:ecommerce_app/widgets/items_widget.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
        HomeAppBar(),
        Container(
          height: 1500,
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Color(0xFFEDECF2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            )
          ),
          child: Column(
            children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Here..."
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.search_outlined,
                    size: 27,
                    color: Color.fromRGBO(1, 73, 12, 1),
                  ),

              ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
              ),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(1, 73, 12, 1),
                ),
              ),
            ),
            CategoriesWidget(),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text(
                "Hot Products",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(1, 73, 12, 1),
                ),
              ),
            ),

              ItemsWidget(),
            ],
          ),
        ),
      ],
      ),
    );
      
      
  }
}