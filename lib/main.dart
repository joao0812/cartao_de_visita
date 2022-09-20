import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MeuApp(),
  );
}

// Esse widget stateless tem o Biuld q sempre é executado quando criamos uma nova versão do MeuApp
// verificando qual parte do código foi alterada, informando na tela,
// é necessário usar o hot heload para quando se salvar mudar oq foi alterado de forma instânea
// Reconstroi nosso MaterialApp com as mudanças no scaffold
// Isso reduz cada ciclo de desenvolvimento - escrever, testar, executar e exibir o código
class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[400],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 48,
                backgroundImage: NetworkImage(
                    'https://i.scdn.co/image/ab6761610000e5eb9319d939accc1f1e22155955'),
              ),
              Container( // Nome do Perfil
                width: 350,
                height: 35,
                margin: const EdgeInsets.only(top: 10.0),
                child: const Center(
                  child: Text(
                    'EDNALDO PEREIRA',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
              ),
              Container( // Título do Perfil
                width: 350,
                height: 35,
                child: const Center(
                  child: Text(
                    'DEUS',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Container( // Telefone de contato do Perfil
                  width: 320,
                  height: 55,
                  margin: const EdgeInsets.only(top: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 26,
                        height: 26,
                        margin: const EdgeInsets.only(right: 60, left: 20),
                        child: Image(
                          image: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/128/159/159052.png'),
                        ),
                      ),
                      Container(
                        child: const Text(
                          '55 91234-5678',
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  )),
              Container(// Email de contato do Perfil
                  width: 320,
                  height: 55,
                  margin: const EdgeInsets.only(top: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 26,
                        height: 26,
                        margin: const EdgeInsets.only(right: 60, left: 20),
                        child: Image(
                          image: NetworkImage(
                              'https://icons.iconarchive.com/icons/iconsmind/outline/256/Mail-icon.png'),
                        ),
                      ),
                      Container(
                        child: const Text(
                          'ednaldoPereira@Deus.com.br',
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
