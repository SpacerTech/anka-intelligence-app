import 'package:anka_intelligence_app/api/blocs/application_bloc/application_bloc.dart';
import 'package:anka_intelligence_app/api/blocs/application_bloc/application_event.dart';
import 'package:anka_intelligence_app/api/blocs/application_bloc/application_state.dart';
import 'package:anka_intelligence_app/constant/theme/text_theme.dart';
import 'package:anka_intelligence_app/models/application_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ApplicationDialog extends StatelessWidget {
  const ApplicationDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationBloc, ApplicationState>(
      builder: (context, state) {
        if (state is ApplicationInitial) {
          context.read<ApplicationBloc>().add(GetApplication());
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is ApplicationLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is ApplicationLoaded) {
          final List<Application> application = state.application;
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                AppTextTheme.medium(application[0].title, context),
                AppTextTheme.xSmall("- ${application[0].subtitle} -", context),
                AppTextTheme.xSmall("o ${application[0].subtitle1}", context),
                AppTextTheme.xSmall("o ${application[0].state}", context),
              ],
            ),
          );
        }
        if (state is ApplicationError) {
          return Center(
            child: Text(state.message),
          );
        }
        return Container();
      },
    );
  }
}
