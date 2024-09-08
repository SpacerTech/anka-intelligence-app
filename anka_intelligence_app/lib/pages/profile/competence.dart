import 'package:anka_intelligence_app/api/blocs/profile_bloc/profile_bloc.dart';
import 'package:anka_intelligence_app/api/blocs/profile_bloc/profile_state.dart';
import 'package:anka_intelligence_app/constant/theme/text_theme.dart';
import 'package:anka_intelligence_app/pages/profile/personal_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Competence extends StatelessWidget {
  const Competence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state is ProfileLoaded) {
          final user = state.user;
          return ProfilWidget(
              text: "Yetkinliklerim",
              widget: user.competenceHistory != null
                  ? ListView.builder(
                      shrinkWrap: true,
                      itemCount: user.competenceHistory!.length,
                      itemBuilder: (context, index) {
                        final competence = user.competenceHistory![index];

                        return Container(
                          alignment: Alignment.center,
                          child: AppTextTheme.xSmall(
                              fontWeight: FontWeight.normal,
                              competence.compName!,
                              context),
                        );
                      },
                    )
                  : const SizedBox());
        }
        return Container();
      },
    );
  }
}
