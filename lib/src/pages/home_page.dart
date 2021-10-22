import 'package:casamento_site/src/pages/confirmar_presenca/confirmar_presenca.dart';
import 'package:casamento_site/src/pages/ensaios/ensaios.dart';
import 'package:casamento_site/src/pages/inicio/inicio.dart';
import 'package:casamento_site/src/pages/lista_de_presentes/lista_de_presentes.dart';
import 'package:casamento_site/src/pages/nossa_historia/nossa_historia.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _buttons = [
    "Início",
    "Lista de Presentes",
    "Confirmar Presença",
    "Nossa História",
    "Ensaios",
  ];

  final List<Widget> _pages = [
    const Inicio(),
    const ListaDePresentes(),
    const ConfirmarPresenca(),
    const NossaHistoria(),
    const Ensaios(),
  ];

  int _selectedPage = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: _shouldShowDrawer() ? HomeDrawer() : null,
      body: SizedBox.expand(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              color: Colors.grey.shade200,
              padding: EdgeInsets.symmetric(horizontal: 56, vertical: 28),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Thiago & Bruna",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.parisienne(
                      textStyle: TextStyle(fontSize: 72, color: Colors.blue.shade700),
                    ),
                  ),
                  Visibility(visible: !_shouldShowDrawer(), child: SizedBox(height: 24)),
                  Visibility(
                    visible: !_shouldShowDrawer(),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 16.0,
                      runSpacing: 16.0,
                      children: _homeButtons(),
                    ),
                  ),
                  SizedBox(height: 24),
                  Expanded(
                    child: FractionallySizedBox(
                      widthFactor: 0.85,
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                        elevation: 8,
                        child: Padding(
                          padding: EdgeInsets.all(32),
                          child: SingleChildScrollView(child: _pages[_selectedPage]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: _shouldShowDrawer(),
              child: Align(
                alignment: Alignment.topLeft,
                child: Material(
                  color: Colors.transparent,
                  child: IconButton(
                    iconSize: 32,
                    icon: Icon(Icons.menu),
                    color: Colors.blueAccent.shade700,
                    onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _homeButtons() {
    List<Widget> buttons = List.empty(growable: true);

    _buttons.forEach((element) {
      int idx = _buttons.indexOf(element);

      buttons.add(
        TextButton(
          onPressed: () => setState(() {
            _selectedPage = idx;
          }),
          child: Text(
            element,
            style: GoogleFonts.josefinSans(
              textStyle: TextStyle(color: Colors.blue.shade700, fontSize: 28),
            ),
          ),
          style: TextButton.styleFrom(
            primary: Colors.blueAccent.shade700,
            padding: EdgeInsets.all(16),
            side: idx == _selectedPage ? BorderSide(color: Colors.amberAccent.shade400, width: 1) : null,
          ),
        ),
      );
    });

    return buttons;
  }

  bool _shouldShowDrawer() {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;

    return size.width < size.height && (size.width < 900 || size.height < 900);
  }
}

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ListTile(
            title: Text("TESTE"),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
