import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SettingList extends StatefulWidget {
  const SettingList({
    super.key,
  required this.version,
    required this.user,
    required this.registerDate,
    required this.expirationDate,
    required this.reseller,
    required this.resellerWebsite,
    required this.accountType,
    required this.ip,
    required this.country,

  });


  final int version;
  final String user;
  final String registerDate;
  final String expirationDate;
  final String reseller;
  final String resellerWebsite;
  final String accountType;
  final int ip;
  final String country;

  
  @override
  State<SettingList> createState() => _SettingListState();
}

class _SettingListState extends State<SettingList> {
  bool _logIn = true;
  bool _wifi = true;
  //  final CustomListItem{(

  //  )},
 

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 4.0,
              color: Colors.transparent,
              margin: const EdgeInsets.fromLTRB(1.0, 2.0, 1.0, 2.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: <Widget>[
                  SwitchListTile(
                    secondary: const Icon(
                      Icons.login,
                      color: Colors.white,
                    ),
                    activeColor: Color.fromRGBO(119, 178, 0, 10),
                    contentPadding: const EdgeInsets.only(left: 15, right: 5),
                    value: _logIn,
                    title: const Text("Save login In",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontFamily: "Poppins",
                        )),
                    onChanged: (bool value) {
                      setState(() {
                        _logIn = value;
                      });
                    },
                  ),
                  _buildDivider(),
                  SwitchListTile(
                    secondary: const Icon(
                      Icons.wifi,
                      color: Colors.white,
                    ),
                    activeColor: Color.fromRGBO(119, 178, 0, 10),
                    // inactiveThumbColor : Colors.amberAccent,
                    contentPadding: const EdgeInsets.only(left: 15, right: 5),
                    value: _wifi,
                    onChanged: (bool value) {
                      setState(() {
                        _wifi = value;
                      });
                    },
                    title: const Text("Wifi Only",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontFamily: "Poppins",
                        )),
                  ),
                  _buildDivider(),
                  const ExpansionTile(
                    collapsedIconColor: Colors.white,
                    iconColor: Colors.white,
                    title: Text(
                      'Mobile Network',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: "Poppins",
                      ),
                    ),
                    leading: const Icon(
                      Icons.network_cell,
                      color: Colors.white,
                    ),
                    children: <Widget>[
                      
                      // ListTile(
                      //     title: Text(
                      //   'This is tile number 1',
                      //   style: TextStyle(color: Colors.amber),
                      // )
                      // ),
                    ],
                  ),
                  _buildDivider(),
                  const ExpansionTile(
                    title: Text(
                      'Account Info',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: "Poppins",
                      ),
                    ),
                    collapsedIconColor: Colors.white,
                    iconColor: Colors.white,
                    leading: const Icon(
                      Icons.person_2_rounded,
                      color: Colors.white,
                    ),
                    children: <Widget>[
                      ListTile(
                          title: Text(
                        'This is tile number 1',
                        style: TextStyle(color: Colors.white),
                      ),),
                      
                    ],
                  ),
                  _buildDivider(),
                  const ExpansionTile(
                    collapsedIconColor: Colors.white,
                    iconColor: Colors.white,
                    title: Text(
                      'Content Setting',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: "Poppins",
                      ),
                    ),
                    leading: const Icon(
                      Icons.content_copy_outlined,
                      color: Colors.white,
                    ),
                    children: <Widget>[
                      ListTile(
                          title: Text(
                        'This is tile number 1',
                        style: TextStyle(color: Colors.amber),
                      )),
                    ],
                  ),
                  _buildDivider(),
                  const ExpansionTile(
                    collapsedIconColor: Colors.white,
                    iconColor: Colors.white,
                    title: Text(
                      'Subtittle Setting',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: "Poppins",
                      ),
                    ),
                    leading: const Icon(
                      Icons.content_copy_outlined,
                      color: Colors.white,
                    ),
                    children: <Widget>[
                      ListTile(
                          title: Text(
                        'This is tile number 1',
                        style: TextStyle(color: Colors.amber),
                      )),
                    ],
                  ),
                  _buildDivider(),
                  ListTile(
                    leading: const Icon(
                      Icons.speed,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Launch Speed Test",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: "Poppins",
                      ),
                    ),
                    onTap: () {
                      //open change password
                    },
                  ),
                  _buildDivider(),
                  ListTile(
                    leading: const Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Clear all Search History",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: "Poppins",
                      ),
                    ),
                    onTap: () {
                      //open change password
                    },
                  ),
                  _buildDivider(),
                  ListTile(
                    leading: const Icon(
                      Icons.clear,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Clear User All Data",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: "Poppins",
                      ),
                    ),
                    onTap: () {
                      //open change password
                    },
                  ),
                  _buildDivider(),
                  ListTile(
                    leading: const Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Log Out",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: "Poppins",
                      ),
                    ),
                    // trailing: Icon(Icons.keyboard_arrow_down),
                    onTap: () {
                      //open change password
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 6.0,
      ),
      width: double.infinity,
      height: 1.2,
      // color: Colors.grey.shade400,
      color: Color.fromRGBO(172, 172, 172, 10),
    );
  }
}
