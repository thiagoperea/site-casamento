import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  final String loremIpsum = "Sed ut perspiciatis unde omnis iste natus error "
      "sit voluptatem accusantium doloremque laudantium, totam rem aperiam, "
      "eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae "
      "vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit "
      "aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos "
      "qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui "
      "dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia "
      "non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam "
      "quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem "
      "ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? "
      "Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil "
      "molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText(loremIpsum, style: GoogleFonts.josefinSans(textStyle: TextStyle(fontSize: 24))),
        SizedBox(height: 16),
        Image.asset("images/teste-1.jpg"),
        SizedBox(height: 16),
        SelectableText(loremIpsum, style: GoogleFonts.josefinSans(textStyle: TextStyle(fontSize: 24))),
        SizedBox(height: 16),
        Image.asset("images/teste-2.jpg"),
        SizedBox(height: 16),
        Image.asset("images/teste-3.jpg"),
      ],
    );
  }
}
