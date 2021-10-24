import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NossaHistoria extends StatelessWidget {
  const NossaHistoria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText(
          "Tudo começou por conta de um casal de amigos em comum, a nossa história até poderia ser um conto de fadas, "
          "a menina super extrovertida que se apaixona pelo menino nerd e tímido, o que não foi o nosso caso...\n\n"

          "Foi ela quem mandou o primeiro oi no Instagram, depois de semanas sem resposta o princeso respondeu mas ela "
          "já não estava tão disposta a conversar :(\n\n"

          "Uns dias se passaram então o primeiro encontro foi marcado!! Chegando no shopping os dois estavam super nervosos, "
          "não deu para se conhecerem tão bem, então no dia seguinte teve o segundo encontro(sim, logo no dia seguinte!)\n\n"

          "Depois de quase se afogar com a pipoca o Thiago descobriu que a Bruna não tomava refrigerante... "
          "E adivinha o que ele tinha comprado para ela beber??? Pois é, uma Coca-Cola kkkkkkk\n\n"

          "O terceiro encontro demorou pra acontecer e quase foi por água a baixo depois de uma cerveja e dois copos de "
          "caipirinha para a dona Bruna, mas isso o noivo pode contar pessoalmente!!!\n\n"

          "Quem podia imaginar que depois de tudo estariamos hoje prontos para formar nossa família e a "
          "caminho de nossa união por completo de corpo e alma e queremos que você faça parte "
          "desse dia tão especial, o dia do nosso ACEITO!",
          style: GoogleFonts.josefinSans(textStyle: TextStyle(fontSize: 24, height: 1.3)),
        ),
        SizedBox(height: 16),
        Image.asset("images/nossa-historia-1.jpg", width: 320),
      ],
    );
  }
}
