import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:qbitter/helpers/network.dart';
import 'package:qbitter/helpers/types.dart';
import 'package:qbitter/providers/auth.dart';
import 'package:qbitter/utils/snackbar_service.dart';

class AuthScreen extends ConsumerStatefulWidget {
  const AuthScreen({super.key});

  static const routePath = "/auth";

  @override
  ConsumerState<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends ConsumerState<AuthScreen> {
  final TextEditingController _serverController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool loading = false;

  FutureEither<void> _login() async {
    loading = true;

    String server = _serverController.text.trim();
    String password = _passwordController.text.trim();

    final network = ref.read(networkProvider);
    final auth = ref.read(authProvider.notifier);

    return network.match((l) => Left(l), (network) async {
      var response = await AuthRepo.login(server, password, network);

      final _ = switch (response) {
        Left(value: final l) => {
            if (mounted)
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(l.message),
                duration: const Duration(seconds: 5),
              ))
          },
        Right(value: final data) => {await auth.setToken(data)},
      };
      loading = false;
      return const Right(null);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    controller: _serverController,
                    decoration: const InputDecoration(
                      labelText: 'Server URL',
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () async {
                      final response = await _login();

                      response.match(
                          (l) => SnackBarService.showNegativeSnackBar(
                              context: context, message: l.message),
                          (r) {});
                    },
                    child: const Text('Login'),
                  ),
                ],
              ),
            ),
    );
  }
}
