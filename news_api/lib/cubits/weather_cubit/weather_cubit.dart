import 'package:bloc/bloc.dart';
import 'package:news_api/models/weather_model.dart';
import 'package:news_api/services/weather_service.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {

  WeatherService weatherService;
  String ?cityName;
  WeatherModel? weatherModel;

  WeatherCubit(this.weatherService):super(WeatherInitial());
  void getWeather({required String cityName})async{
    emit(WeatherLoading());
try{
  WeatherModel weatherModel=await weatherService.getWeather(cityName: cityName);
  emit(WeatherSuccess(weatherModel: weatherModel));

}on Exception catch(e){
  emit(WeatherFailure());
}
  }
}
