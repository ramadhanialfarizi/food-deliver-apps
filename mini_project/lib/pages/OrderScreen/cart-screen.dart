import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: Container(
            margin: const EdgeInsets.only(
              top: 20.0,
            ),
            child: Text(
              'Keranjang',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          leading: Container(
            height: 38,
            width: 38,
            margin: const EdgeInsets.only(
              left: 20.0,
              top: 20.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black12,
              ),
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 9,
                  spreadRadius: 1,
                  offset: Offset(4, 5),
                ),
              ],
            ),
            child: Align(
              //alignment: Alignment.center,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_sharp,
                  color: Colors.black,
                  size: 17,
                ),
                onPressed: () {
                  //action
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ),
      ),
      // body: SafeArea(
      //   child: SingleChildScrollView(
      //     child: ListView(
      //       shrinkWrap: true,
      //       physics: const NeverScrollableScrollPhysics(),
      //       children: [],
      //     ),
      //   ),
      // ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: SizedBox(
          height: 60,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.check),
        label: Text('Checkout'),
        backgroundColor: Colors.orange[700],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
