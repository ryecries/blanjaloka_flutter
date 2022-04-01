import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/screens/homepage/order.dart';
import 'package:blanjaloka_flutter/screens/homepage/others.dart';
import 'package:blanjaloka_flutter/screens/homepage/product.dart';
import 'package:blanjaloka_flutter/screens/homepage/transaction.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Order(),
    Product(),
    Transaction(),
    Others(),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFFFFFFF),
        selectedItemColor: bPrimaryColor,
        unselectedItemColor:Color(0xFF868290),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label : ('Pesanan')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label : ('Produk')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label : ('Transaksi')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_applications),
              label : ('Lainnya')
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}