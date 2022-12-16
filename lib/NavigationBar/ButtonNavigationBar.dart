import 'package:eppa/NavigationBar/AmaliyotTarihi.dart';
import 'package:eppa/NavigationBar/Katalog.dart';
import 'package:eppa/NavigationBar/ProfilPage.dart';
import 'package:eppa/NavigationBar/XaridQoshish.dart';
import 'package:flutter/material.dart';

class ButtonNavigationBar extends StatefulWidget {
  int index;
   ButtonNavigationBar(this.index,{ Key? key }) : super(key: key);

  @override
  State<ButtonNavigationBar> createState() => _ButtonNavigationBarState();
}

class _ButtonNavigationBarState extends State<ButtonNavigationBar> {
  List? pages;
  @override
  void initState() {
    // TODO: implement initState
   pages = [ProfilPage(), XaridQoshishPage(),Katalog(),AmaliyotTarihi()];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(title: Text("Ortga"),leading: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back),),),
      body:  pages![widget.index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (e) {
          setState(() {
            widget.index = e;
            if(widget.index == 0){
              Navigator.pop(context);
            }
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.index,
        elevation: 10,
        selectedFontSize: 30,
        iconSize: 30,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: ""),
         
        ],
      ),
    );
  }
}