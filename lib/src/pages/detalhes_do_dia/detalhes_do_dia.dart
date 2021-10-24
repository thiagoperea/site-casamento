import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetalhesDoDia extends StatelessWidget {
  const DetalhesDoDia({Key? key}) : super(key: key);

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
        SelectableText(
          "Nosso dia só poderia ser completo com a presença e união com Deus, "
          "então nossa escolha foi a Paróquia Santa Rita, "
          "onde criamos laços e frequentamos desde então.",
          style: GoogleFonts.josefinSans(textStyle: TextStyle(fontSize: 24, height: 1.3)),
        ),
        SizedBox(height: 16),
        Image.asset("images/detalhes-do-dia-1.jpg", width: 400),
        SizedBox(height: 8),
        SelectableText(
          "Celebração: Paróquia Santa Rita de Cássia\n"
          "Horário: 16:30\n"
          "Abrir localização",
          textAlign: TextAlign.center,
          style: GoogleFonts.josefinSans(textStyle: TextStyle(fontSize: 18, height: 1.3)),
        ),
        SizedBox(height: 8),
        Divider(indent: 32, endIndent: 32),
        SizedBox(height: 8),
        Image.asset("images/detalhes-do-dia-2.JPG", width: 400),
        SizedBox(height: 8),
        SelectableText(
          "Festa: Buffet Guimarães\n"
          "Abrir localização",
          textAlign: TextAlign.center,
          style: GoogleFonts.josefinSans(textStyle: TextStyle(fontSize: 18, height: 1.3)),
        ),
      ],
    );
  }
}
