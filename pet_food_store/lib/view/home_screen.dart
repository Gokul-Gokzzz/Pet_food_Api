import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_food_store/view/widget/category.dart';
import 'package:pet_food_store/view/widget/items.dart';
import 'package:pet_food_store/view/widget/popular.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00A368),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15, right: 20, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFF00A368),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.5),
                              blurRadius: 2)
                        ]),
                    child: Badge(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.all(7),
                      // badge:const Text('3',style: TextStyle(color: Colors.white),)
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          CupertinoIcons.cart,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const Column(
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "What Do You Want to Buy??",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  const Icon(Icons.search),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    width: 200,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Search Here .....",
                          border: InputBorder.none),
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.filter_list)
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CategoryWidget(),
                  PopularItemWidget(),
                  const ItemsWidget(),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
