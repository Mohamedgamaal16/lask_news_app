import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trendspot_newes_app/features/profile/data/models/profile_model.dart';
import 'package:trendspot_newes_app/features/profile/data/repos/profile_repo.dart';

part 'getprofile_data_state.dart';

class GetprofileDataCubit extends Cubit<GetprofileDataState> {
  GetprofileDataCubit(this.profileRepo) : super(GetprofileDataInitial());

  final ProfileRepo profileRepo;
  Future<void> displayUserData() async {
    emit(GetprofileDataLoading());
    var response = await profileRepo.fetchProfileData();
    response.fold(
      (errMsg) => emit(GetprofileDataFaliure(errMsg: errMsg)),
      (data) => emit(GetprofileDataSucces(user: data)),
    );
  }
}
