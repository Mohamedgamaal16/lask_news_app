import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';
import 'package:trendspot_newes_app/features/profile/presention/manager/cubit/getprofile_data_cubit.dart';
import 'package:trendspot_newes_app/features/profile/presention/widgets/about_us.dart';
import 'package:trendspot_newes_app/features/profile/presention/widgets/profile_header.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetprofileDataCubit, GetprofileDataState>(
      builder: (context, state) {
        if (state is GetprofileDataSucces) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                  child: ProfileHeader(
                name: state.user.name, pic:state.user.profilePic,
              )),
              const SliverToBoxAdapter(
                child: Divider(
                  height: 50,
                ),
              ),
              SliverToBoxAdapter(
                child: ExpansionTile(
                  title: Text(
                    'info',
                    style: AppStyles.interStyleSemiBold20(context)
                        .copyWith(color: Colors.black),
                  ),
                  shape: const Border(),
                  children: [
                    ListTile(
                      leading: const Icon(
                        FontAwesomeIcons.user,
                        size: 18,
                      ),
                      title: Text(
                        state.user.name,
                        style: AppStyles.interStyleSemiBold16(context)
                            .copyWith(color: Colors.black),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        FontAwesomeIcons.envelope,
                        size: 18,
                      ),
                      title: Text(
                        state.user.email,
                        style: AppStyles.interStyleSemiBold16(context)
                            .copyWith(color: Colors.black),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        FontAwesomeIcons.phone,
                        size: 18,
                      ),
                      title: Text(
                        state.user.phone,
                        style: AppStyles.interStyleSemiBold16(context)
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: ExpansionTile(
                  title: Text(
                    'Settings',
                    style: AppStyles.interStyleSemiBold20(context)
                        .copyWith(color: Colors.black),
                  ),
                  shape: const Border(),
                  children: [
                    ListTile(
                      title: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    AboutUsPage()), // Navigate to AboutUsPage
                          );
                        },
                        child: Text(
                          'About Us',
                          style: AppStyles.interStyleSemiBold16(context)
                              .copyWith(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        } else if (state is GetprofileDataLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is GetprofileDataFaliure) {
          return Text(state.errMsg);
        } else {
          return const Text('there was an error please try again');
        }
      },
    );
  }
}
