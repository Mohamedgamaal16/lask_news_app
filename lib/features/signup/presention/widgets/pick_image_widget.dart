import 'dart:io';

import 'package:dartz/dartz_streaming.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trendspot_newes_app/features/signup/presention/manager/signup_cubit/signup_cubit.dart';

class PickImageWidget extends StatelessWidget {
  const PickImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SizedBox(
          width: 130,
          height: 130,
          child:context.read<SignupCubit>().profilePic==null?  CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            backgroundImage: const AssetImage("assets/images/avatar.png"),
            child: Stack(
              children: [
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: GestureDetector(
                    onTap: () async {
                      ImagePicker()
                          .pickImage(source: ImageSource.gallery)
                          .then((value) => context.read<SignupCubit>().uploadProfilePic(value!));
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade400,
                        border: Border.all(color: Colors.white, width: 3),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Icon(
                        Icons.camera_alt_sharp,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ): CircleAvatar(backgroundImage: FileImage(File(context.read<SignupCubit>().profilePic!.path)),),
        );
      },
    );
  }
}
