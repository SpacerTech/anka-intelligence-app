import 'package:anka_intelligence_app/api/blocs/auth_bloc/auth_bloc.dart';
import 'package:anka_intelligence_app/api/blocs/auth_bloc/auth_event.dart';
import 'package:anka_intelligence_app/constant/theme/image.dart';
import 'package:anka_intelligence_app/core/widget/square_auth_buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginPageSquareButtons extends StatelessWidget {
  const LoginPageSquareButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SquareAuthButtons(
          imagePath: AppImage.googleButtonImage,
          onTap: () {
            context.read<AuthBloc>().add(SignInWithGoogle(
                email: GoogleAuthProvider.GOOGLE_SIGN_IN_METHOD));
          },
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
