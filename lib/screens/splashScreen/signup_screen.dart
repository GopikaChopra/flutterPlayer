import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _urlController = TextEditingController();
  final TextEditingController _linkController = TextEditingController();

  void _singIn() async {}

  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _urlController.text = "http://";
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
              image: const AssetImage('assets/images/4-layers.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Color.fromARGB(255, 12, 12, 12).withOpacity(0.9),
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
                      height: 190,
                      width: 160,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/iptv.png"),
                          fit: BoxFit.fill,
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
                flex: 3,
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
                              // controller: _urlController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 10),

                                hintText: "First Name",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(132, 175, 53, 10),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(132, 175, 53, 10),
                                  ),
                                ),

                                border: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                                ),
                                filled: true, //<-- SEE HERE
                                fillColor:
                                const Color.fromARGB(255, 232, 231, 233),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              // controller: _urlController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 10),

                                hintText: "Last Name",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(132, 175, 53, 10),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(132, 175, 53, 10),
                                  ),
                                ),

                                border: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                                ),
                                filled: true, //<-- SEE HERE
                                fillColor:
                                const Color.fromARGB(255, 232, 231, 233),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              // controller: _urlController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 10),

                                hintText: "Email",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(132, 175, 53, 10),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(132, 175, 53, 10),
                                  ),
                                ),

                                border: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                                ),
                                filled: true, //<-- SEE HERE
                                fillColor:
                                const Color.fromARGB(255, 232, 231, 233),
                              ),
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              // initialValue: "http://",
                              // initialValue: ,
                              controller: _linkController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 10),
                                hintText: "Password",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(132, 175, 53, 10),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(132, 175, 53, 10),
                                  ),
                                ),

                                border: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                                ),
                                filled: true, //<-- SEE HERE
                                fillColor: Color.fromARGB(255, 232, 231, 233),
                                // labelText: 'Enter EPG URL(Optional)',
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              // initialValue: "http://",
                              // initialValue: ,
                              controller: _linkController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 10),
                                hintText: " Confirm Password",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(132, 175, 53, 10),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(132, 175, 53, 10),
                                  ),
                                ),

                                border: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                                ),
                                filled: true, //<-- SEE HERE
                                fillColor: Color.fromARGB(255, 232, 231, 233),
                                // labelText: 'Enter EPG URL(Optional)',
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  backgroundColor:
                                  const Color.fromRGBO(132, 175, 53, 10),
                                  padding: const EdgeInsets.all(15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  side: const BorderSide(
                                      width: 1.0, color: Colors.grey),
                                ),
                                child: const Text(
                                  "Log In",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15.0),
                                ),
                                onPressed: () async {
                                  final url = _urlController.text;
                                  final link = _linkController.text;
                                  if (url.isEmpty || link.isEmpty) {
                                    showDialog(
                                        context: context,
                                        builder: (_) => AlertDialog(
                                          title: const Text('Error'),
                                          content: const Text(
                                              'Please enter details'),
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

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
