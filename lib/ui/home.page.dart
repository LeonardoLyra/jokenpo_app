import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  var mensagem = '';
  var img = '';

  void escolherPedra() {
    var r = Random();
    int numero = r.nextInt(3);

    if (numero == 0) {
      this.mensagem = 'Sua Escolha:  Pedra\nEscolha da máquina: Pedra';
      this.img = 'assets/images/empate.png';
    } else if (numero == 1) {
      this.mensagem = 'Sua Escolha:  Pedra\nEscolha da máquina: Papel';
      this.img = 'assets/images/derrota.png';
    } else {
      this.mensagem = 'Sua Escolha:  Pedra\nEscolha da máquina: Tesoura';
      this.img = 'assets/images/vitoria.png';
    }

    setState(() {
      this.mensagem = mensagem;
      this.img = img;
    });
  }

  void escolherPapel() {
    var r = Random();
    int numero = r.nextInt(3);

    if (numero == 0) {
      this.mensagem = 'Sua Escolha:  Papel\nEscolha da máquina: Pedra';
      this.img = 'assets/images/vitoria.png';
    } else if (numero == 1) {
      this.mensagem = 'Sua Escolha:  Papel\nEscolha da máquina: Papel';
      this.img = 'assets/images/empate.png';
    } else {
      this.mensagem = 'Sua Escolha:  Papel\nEscolha da máquina: Tesoura';
      this.img = 'assets/images/derrota.png';
    }

    setState(() {
      this.mensagem = mensagem;
      this.img = img;
    });
  }

  void escolherTesoura() {
    var r = Random();
    int numero = r.nextInt(3);

    if (numero == 0) {
      this.mensagem = 'Sua Escolha:  Tesoura\nEscolha da máquina: Pedra';
      this.img = 'assets/images/derrota.png';
    } else if (numero == 1) {
      this.mensagem = 'Sua Escolha:  Tesoura\nEscolha da máquina: Papel';
      this.img = 'assets/images/vitoria.png';
    } else {
      this.mensagem = 'Sua Escolha:  Tesoura\nEscolha da máquina: Tesoura';
      this.img = 'assets/images/empate.png';
    }

    setState(() {
      this.mensagem = mensagem;
      this.img = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 2,
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Center(
                child: Image.asset('assets/images/jokenpo_appbar.png'),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Flexible(
            flex: 2,
            child: Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Container(
                    child: Center(
                      child: Image.asset('assets/images/pedra.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                    child: Center(
                      child: Image.asset('assets/images/papel.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                    child: Center(
                      child: Image.asset('assets/images/tesoura.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 0,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                    child: RaisedButton(
                      color: Colors.black,
                      child: Text(
                        "Escolher Pedra",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      onPressed: escolherPedra,
                    ),
                  ),
                ),
                SizedBox(
                  width: 55,
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                    child: RaisedButton(
                      color: Colors.black,
                      child: Text(
                        "Escolher Papel",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      onPressed: escolherPapel,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                    child: RaisedButton(
                      color: Colors.black,
                      child: Text(
                        "Escolher Tesoura",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      onPressed: escolherTesoura,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Flexible(
            flex: 2,
            child: Container(
              child: Text(
                "$mensagem",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Flexible(
              flex: 4,
              child: Container(
                child: Center(
                  child: Image.asset('$img'),
                ),
              )),
        ],
      ),
    );
  } //widget build
}
