import 'package:flutter/material.dart';
import 'package:pupplates/pages/details.dart';
import 'package:pupplates/widgets/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _nameState();
}

class _nameState extends State<Home> {
  bool food = false, care = false, artical = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello, User",
                  style: AppWidget.boldTextFeildStyle(),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(height: 40.0),
            Text(
              "For Your Loving",
              style: AppWidget.HeadlineTextFeildStyle(),
            ),
            Text(
              "Take care of your loving pet",
              style: AppWidget.lightTextFeildStyle(),
            ),
            const SizedBox(
              height: 40,
            ),
            showItem(),
            const SizedBox(
              height: 30.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Details()));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/image/dogfoodpack.png',
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                'Food Item Name',
                                style: AppWidget.semiBoldtTextFeildStyle(),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Adult with real beef',
                                style: AppWidget.lightTextFeildStyle(),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'LKR 550.00',
                                style: AppWidget.semiBoldtTextFeildStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/image/dogfoodpack.png',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Food Item Name',
                            style: AppWidget.semiBoldtTextFeildStyle(),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Adult with real beef',
                            style: AppWidget.lightTextFeildStyle(),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'LKR 550.00',
                            style: AppWidget.semiBoldtTextFeildStyle(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/image/dogfoodpack.png',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Food Item Name',
                            style: AppWidget.semiBoldtTextFeildStyle(),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Adult with real beef',
                            style: AppWidget.lightTextFeildStyle(),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'LKR 550.00',
                            style: AppWidget.semiBoldtTextFeildStyle(),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/image/dogfoodpack.png',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "Food Item Name",
                              style: AppWidget.semiBoldtTextFeildStyle(),
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "Food Description",
                              style: AppWidget.lightTextFeildStyle(),
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "LKR 500.00",
                              style: AppWidget.semiBoldtTextFeildStyle(),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              food = true;
              care = false;
              artical = false;
              setState(() {});
            },
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                    color: food ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  'assets/image/dogfoodico.png',
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                  color: food ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              food = false;
              care = true;
              artical = false;
              setState(() {});
            },
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                    color: care ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  'assets/image/lovepet.png',
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                  color: care ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              food = false;
              care = false;
              artical = true;
              setState(() {});
            },
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                    color: artical ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  'assets/image/artical.png',
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                  color: artical ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
