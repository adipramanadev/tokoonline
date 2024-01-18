import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tokoonline/models/models.dart';
import 'package:tokoonline/services/services.dart';

part 'food_state.dart';

class FoodCubit extends Cubit<FoodState> {
  FoodCubit() : super(FoodInitial());

  Future<void> getFoods() async {
    ApiReturnValue<List<Food>> result = await FoodServices.getFoods();

    if (result.value != null) {
      emit(FoodLoaded(result.value));
      // List<FoodLoaded> foods =
      //     result.value!.map((e) => FoodLoaded(e as List<Food>)).toList();
    } else {
      emit(FoodLoadingFailed(result.message));
    }
  }
}
