import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sales_app/src/pages/login/controller/login_controller.dart';
import 'package:sales_app/shared/widgets/custom_buttom.dart';
import 'package:sales_app/shared/widgets/form_widget.dart';
import 'package:sales_app/src/pages/login/routes.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key, required this.controller});

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    late TextEditingController emailController = TextEditingController();
    late TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              /// Top
              const SizedBox(height: 40),
              Icon(
                Icons.person_outline_sharp,
                color: Colors.grey[300],
                size: 140,
              ),
              const SizedBox(height: 13),
              const Text(
                'Bem vindo de volta',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Faça login pare continuar',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[400],
                ),
              ),
              const SizedBox(height: 20),

              /// Fields to login
              FormWidget(
                icon: Icons.email,
                label: 'Email',
                controller: emailController,
              ),
              FormWidget(
                icon: Icons.lock,
                label: 'Senha',
                isSecret: true,
                controller: passwordController,
              ),

              /// Buttom to forget password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Esqueceu a senha?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  )
                ],
              ),

              /// Buttom to sign
              CustomButtom(
                backgroundColor: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10),
                textColor: Colors.white,
                onPressed: () {
                  controller.login(
                    email: emailController.text,
                    password: passwordController.text,
                  );
                },
                buttomText: 'Entrar',
              ),
              const SizedBox(height: 18),

              /// Register Text buttom
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Não têm uma conta?',
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () => context.push(
                      LoginRoutes.register,
                      extra: 'teste',
                    ),
                    child: Text(
                      'Cadastre-se',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
