import 'package:eppa/Boglanish.dart';
import 'package:eppa/NavigationBar/ProfilPage.dart';
import 'package:eppa/class.dart';
import 'package:flutter/material.dart';

class UserRaqamHaPage extends StatefulWidget {
  const UserRaqamHaPage({Key? key}) : super(key: key);

  @override
  State<UserRaqamHaPage> createState() => _UserRaqamHaPageState();
}

class _UserRaqamHaPageState extends State<UserRaqamHaPage> {
  TextEditingController _sms = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back))),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "SMS kodni kiriting",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: TextFormField(
                    maxLength: 8,
                    decoration: InputDecoration(border: InputBorder.none),
                    controller: _sms,
                  )),
              SizedBox(
                height: 40,
              ),
              Container(
                  width: 358,
                  height: 54,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      onPressed: () {
                        if(usernames.classsms == _sms.text){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilPage()));
                        }
                      },
                      child: Text("Ok"))),
              SizedBox(
                height: 310,
              ),
              Container(
                width: 358,
                height: 54,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BoglanishPage()));
                    },
                    child: Text("Biz bilan bog’lanish")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
