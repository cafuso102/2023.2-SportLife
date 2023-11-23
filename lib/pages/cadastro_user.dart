import 'package:flutter/material.dart';
import 'package:modernlogintute/components/custom_button.dart';
import 'package:modernlogintute/pages/login_page.dart';
import 'package:modernlogintute/components/my_textfield.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class CadastroUser extends StatelessWidget {
  CadastroUser({Key? key}) : super(key: key);

  final cpfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Cadastro de Usuário'),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Imagem de background
            Positioned.fill(
              child: Image.asset(
                'lib/images/crianca.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            // Painel
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 150, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                    const Text(
                      'Telefone do responsável:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                    const SizedBox(height: 10),
      
                    MyTextField(
                      controller: cpfController,
                      hintText: 'Telefone',
                      obscureText: true,
                    ),
      
                    const SizedBox(height: 20),
      
                    const Text(
                      'Nome do responsável:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                    const SizedBox(height: 10),
      
      
                    MyTextField(
                      controller: cpfController,
                      hintText: 'Nome',
                      obscureText: true,
                    ),
      
                    const SizedBox(height: 20),
      
                    const Text(
                      'E-mail do responsável:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                    const SizedBox(height: 10),
      
      
                    MyTextField(
                      controller: cpfController,
                      hintText: 'Email',
                      obscureText: true,
                    ),
      
                    const SizedBox(height: 20),
      
                    const Text(
                      'Nome do paciente',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                    const SizedBox(height: 10),
                   
      
                    MyTextField(
                      controller: cpfController,
                      hintText: 'Nome',
                      obscureText: true,
                    ),
      
                    const SizedBox(height: 20),

                    const Text(
                      'Data de nascimento do paciente:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                    const SizedBox(height: 10),
                   
      
                    MyTextField(
                      controller: cpfController,
                      hintText: 'xx/yy/zzzz',
                      obscureText: true,
                    ),
      
                    const SizedBox(height: 20),
      
                    const Text(
                      'Senha',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                   const SizedBox(height: 10),
      
                    MyTextField(
                      controller: cpfController,
                      hintText: 'Senha',
                      obscureText: true,
                    ),
      
                    const SizedBox(height: 20),
      
                    const Text(
                      'Confirmação de senha:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                    const SizedBox(height: 10),
      
                    MyTextField(
                      controller: cpfController,
                      hintText: 'Senha',
                      obscureText: true,
                    ),
      
                    const SizedBox(height: 10),

                  ],
              ),
            ),
          ],
        ),
      ),
     bottomNavigationBar: Padding(
  padding: const EdgeInsets.all(20.0),
  child: CustomButton(
    text: 'Avançar',
    onPressed: () {
      // Mostrar o diálogo de sucesso ao pressionar o botão
      AwesomeDialog(
        context: context,
        dialogType: DialogType.success,
        animType: AnimType.bottomSlide,
        title: 'Sucesso',
        desc: 'Você já está cadastrado!',
        btnOkOnPress: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
      ).show();
    },
  ),
),
    );
  }
}