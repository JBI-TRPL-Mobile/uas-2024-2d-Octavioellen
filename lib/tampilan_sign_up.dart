import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Create an Account', style: TextStyle(fontSize: 24)),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(labelText: 'Full Name'),
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {

                  Navigator.pushNamed(context, '/sign_in'); 
                },
                child: const Text('Sign Up'),
              ),
              const SizedBox(height: 20),
              const Text('or sign in with', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.android), 
                    onPressed: () {
                      
                    },
                    tooltip: 'Sign in with Google',
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    icon: const Icon(Icons.facebook), 
                    onPressed: () {
                    
                    },
                    tooltip: 'Sign in with Facebook',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign_in'); 
                },
                child: const Text('Back to Login'),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pop(context); 
                },
                child: const Text('Don\'t have an account? Sign Up Now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}