import 'package:flutter/material.dart';
import 'package:new_player/utils/dimensions.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  void _register() async {}

  void _singIn() async {}

  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _renderSignIn() {
    return Stack(
      children: [
        Container(
          height: 900,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/login_bg.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Color.fromARGB(255, 12, 12, 12).withOpacity(0.5),
                BlendMode.srcOver,
              ),
            ),
          ),
        ),
        Container(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 180,
                      width: 120,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/iptv.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text: 'IPTV ',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 30),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'FALCONS',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  fontSize: 30)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  //  alignment: Alignment.center,
                  // color: Colors.green,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            TextFormField(
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      // borderSide: BorderSide(
                                      //   width: 1,
                                      // )
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(66, 202, 28, 28),
                                          width: 0)),
                                  filled: true, //<-- SEE HERE
                                  fillColor: Color.fromARGB(255, 232, 231, 233),
                                  prefixText: "http://",
                                  prefixStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight:
                                          FontWeight.w500) //<-- SEE HERE
                                  ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    // borderSide: BorderSide(
                                    //   width: 1,
                                    // )
                                    // side: BorderSide(width: 5.0, color: Colors.blue),
                                    // borderSide: BorderSide(
                                    //     color: Color.fromARGB(66, 202, 28, 28),
                                    //     width: 2)
                                    borderSide: BorderSide(
                                        width: 3, color: Colors.greenAccent)),
                                filled: true, //<-- SEE HERE
                                fillColor: Color.fromARGB(255, 232, 231, 233),
                                labelText: 'EnterEPG URL(Optional)',
                                // prefixText: "http://",
                                // prefixStyle: TextStyle(
                                //     color: Colors.black,
                                //     fontSize: 20,
                                //     fontWeight:
                                //         FontWeight.w500) //<-- SEE HERE
                              ),
                            ),
                            // new Container(
                            //     padding: const EdgeInsets.only(
                            //         left: 130.0, top: 40.0),
                            //     child: new ElevatedButton(
                            //       child: const Text('Submit'),
                            //       onPressed: null,
                            //     )),
                            SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  // backgroundColor: Color.(84af35),
                                  // backgroundColor: Color(0xFFbfeb91),
                                  backgroundColor:
                                      Color.fromRGBO(132, 175, 53, 10),
                                  // padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  padding: EdgeInsets.all(15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  // side: BorderSide(width: 2, color: Colors.green),
                                  side: const BorderSide(
                                      width: 1.0, color: Colors.grey),
                                ),
                                child: const Text(
                                  "DOWNLOAD",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15.0),
                                ),
                                onPressed: () async {
                                  final email = _emailController.text;
                                  final password = _passwordController.text;
                                  if (email.isEmpty || password.isEmpty) {
                                    showDialog(
                                        context: context,
                                        builder: (_) => AlertDialog(
                                              title: const Text('Error'),
                                              content: const Text(
                                                  'Please enter your email and password'),
                                              actions: [
                                                TextButton(
                                                  child: const Text('OK'),
                                                  onPressed: () => Navigator.of(
                                                          context,
                                                          rootNavigator: true)
                                                      .pop('dialog'),
                                                )
                                              ],
                                            ));
                                    return;
                                  }
                                  _singIn();
                                },
                              ),
                            ),
                          ],
                        ),
                      )
                      // TextField(
                      //   controller: _emailController,
                      //   autofocus: false,
                      //   autocorrect: false,
                      //   enableSuggestions: false,
                      //   decoration: const InputDecoration(
                      //       border: OutlineInputBorder(
                      //           // borderRadius:
                      //           //     BorderRadius.all(Radius.circular(12)),
                      //           // borderSide: BorderSide(
                      //           //   width: 1,
                      //           // )
                      //           borderSide: const BorderSide(color: Color.fromARGB(255, 151, 30, 30), width: 0.0),
                      //           ),
                      //       filled: true,
                      //       fillColor: Colors.white,
                      //       // labelText: '',
                      //       floatingLabelStyle: TextStyle(
                      //           color: Colors.black,
                      //           fontSize: 20,
                      //           fontWeight: FontWeight.w500),
                      //       focusedBorder: InputBorder.none,
                      //       // border: InputBorder.none,
                      //       prefixText: "http://",
                      //       prefixStyle: const TextStyle(
                      //           color: Colors.black,
                      //           fontSize: 20,
                      //           fontWeight: FontWeight.w500)),
                      // ),
                      // SizedBox(height: 20),
                      // TextField(
                      //   controller: _passwordController,
                      //   obscureText: true,
                      //   autofocus: false,
                      //   autocorrect: false,
                      //   enableSuggestions: false,
                      //   decoration: const InputDecoration(
                      //     filled: true,
                      //     fillColor: Colors.white,
                      //     labelText: 'EnterEPG URL(Optional)',
                      //     floatingLabelStyle: TextStyle(color: Colors.black),
                      //     focusedBorder: InputBorder.none,
                      //     border: InputBorder.none,
                      //   ),
                      // ),
                      // const SizedBox(height: 20.0),
                      // SizedBox(
                      //   width: double.infinity,
                      //   child: OutlinedButton(
                      //     style: OutlinedButton.styleFrom(
                      //       backgroundColor: Colors.green,
                      //       padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      //       side: const BorderSide(
                      //           width: 1.0, color: Colors.grey),
                      //     ),
                      //     child: const Text(
                      //       "Download",
                      //       style: TextStyle(
                      //           color: Colors.white,
                      //           fontWeight: FontWeight.bold,
                      //           fontSize: 22.0),
                      //     ),
                      //     onPressed: () async {
                      //       final email = _emailController.text;
                      //       final password = _passwordController.text;
                      //       if (email.isEmpty || password.isEmpty) {
                      //         showDialog(
                      //             context: context,
                      //             builder: (_) => AlertDialog(
                      //                   title: const Text('Error'),
                      //                   content: const Text(
                      //                       'Please enter your email and password'),
                      //                   actions: [
                      //                     TextButton(
                      //                       child: const Text('OK'),
                      //                       onPressed: () => Navigator.of(
                      //                               context,
                      //                               rootNavigator: true)
                      //                           .pop('dialog'),
                      //                     )
                      //                   ],
                      //                 ));
                      //         return;
                      //       }
                      //       _singIn();
                      //     },
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        // Container(
        //   padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       const SizedBox(height: 50),
        //       Container(
        //         height: 180,
        //         width: 120,
        //         decoration: const BoxDecoration(
        //           image: DecorationImage(
        //             image: AssetImage("assets/images/iptv.png"),
        //             fit: BoxFit.cover,
        //           ),
        //         ),
        //       ),
        //       Center(
        //         child: RichText(
        //           text: const TextSpan(
        //             text: 'IPTV ',
        //             style: TextStyle(
        //                 fontWeight: FontWeight.w500,
        //                 color: Colors.white,
        //                 fontSize: 30),
        //             children: <TextSpan>[
        //               TextSpan(
        //                   text: 'FALCONS',
        //                   style: TextStyle(
        //                       fontWeight: FontWeight.w900,
        //                       color: Colors.white,
        //                       fontSize: 30)),
        //             ],
        //           ),
        //         ),
        //       ),
        //       const SizedBox(height: 100), // Dimensions.height10),
        //       TextField(
        //         controller: _emailController,
        //         autofocus: false,
        //         autocorrect: false,
        //         enableSuggestions: false,
        //         decoration: const InputDecoration(
        //             border: OutlineInputBorder(
        //                 borderRadius: BorderRadius.all(Radius.circular(4)),
        //                 borderSide: BorderSide(
        //                   width: 1,
        //                 )),
        //             filled: true,
        //             fillColor: Colors.white,
        //             labelText: '',
        //             floatingLabelStyle: TextStyle(
        //                 color: Colors.black,
        //                 fontSize: 20,
        //                 fontWeight: FontWeight.w500),
        //             focusedBorder: InputBorder.none,
        //             // border: InputBorder.none,
        //             prefixText: "http://",
        //             prefixStyle: const TextStyle(
        //                 color: Colors.black,
        //                 fontSize: 20,
        //                 fontWeight: FontWeight.w500)),
        //       ),
        //       SizedBox(
        //         height: 20,
        //       ),
        //       TextField(
        //         controller: _passwordController,
        //         obscureText: true,
        //         autofocus: false,
        //         autocorrect: false,
        //         enableSuggestions: false,
        //         decoration: const InputDecoration(
        //           filled: true,
        //           fillColor: Colors.white,
        //           labelText: 'EnterEPG URL(Optional)',
        //           floatingLabelStyle: TextStyle(color: Colors.black),
        //           focusedBorder: InputBorder.none,
        //           border: InputBorder.none,
        //         ),
        //       ),
        //       const SizedBox(height: 20.0),
        //       SizedBox(
        //         width: double.infinity,
        //         child: OutlinedButton(
        //           style: OutlinedButton.styleFrom(
        //             backgroundColor: Colors.green,
        //             padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        //             side: const BorderSide(width: 1.0, color: Colors.grey),
        //           ),
        //           child: const Text(
        //             "Download",
        //             style: TextStyle(
        //                 color: Colors.white,
        //                 fontWeight: FontWeight.bold,
        //                 fontSize: 22.0),
        //           ),
        //           onPressed: () async {
        //             final email = _emailController.text;
        //             final password = _passwordController.text;
        //             if (email.isEmpty || password.isEmpty) {
        //               showDialog(
        //                   context: context,
        //                   builder: (_) => AlertDialog(
        //                         title: const Text('Error'),
        //                         content: const Text(
        //                             'Please enter your email and password'),
        //                         actions: [
        //                           TextButton(
        //                             child: const Text('OK'),
        //                             onPressed: () => Navigator.of(context,
        //                                     rootNavigator: true)
        //                                 .pop('dialog'),
        //                           )
        //                         ],
        //                       ));
        //               return;
        //             }
        //             _singIn();
        //           },
        //         ),
        //       ),
        //     ],
        //   ),
        // )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    _emailController.text = "";

    return Scaffold(
        extendBodyBehindAppBar: true,
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            _renderSignIn(),
          ],
        ));
  }
}
