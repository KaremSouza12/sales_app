import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sales_app/shared/widgets/custom_buttom.dart';
import 'package:sales_app/shared/widgets/form_widget.dart';
import 'package:sales_app/src/pages/login/routes.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:
            IconThemeData(color: Theme.of(context).primaryColor, size: 33),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Icon(
                Icons.person_outline_sharp,
                color: Colors.grey[300],
                size: 140,
              ),
              const SizedBox(height: 13),
              const Text(
                'Crie sua conta',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Crie uma nova conta',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[400],
                ),
              ),
              const SizedBox(height: 20),

              /// Fields to login
              const FormWidget(
                icon: Icons.person,
                label: 'Nome',
              ),
              const FormWidget(
                icon: Icons.email,
                label: 'Email',
              ),
              const FormWidget(
                icon: Icons.lock,
                label: 'Senha',
                isSecret: true,
              ),

              /// Buttom to sign
              CustomButtom(
                backgroundColor: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10),
                textColor: Colors.white,
                onPressed: () {},
                buttomText: 'Criar Conta',
              ),
              const SizedBox(height: 18),

              /// Register Text buttom
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Já têm  conta?',
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () => context.go(LoginRoutes.login),
                    child: Text(
                      'Login',
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
