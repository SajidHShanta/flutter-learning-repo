import '../services/location.dart';
import '../services/networking.dart';

const kApiKey = '8031645a305d45f269604f4ae9213da7';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async{
    Uri uri = Uri.https('api.openweathermap.org', '/data/2.5/weather', {
      'q': cityName,
      'appid': kApiKey.toString(),
      'units': 'metric'
    });
    NetworkHelper networkHelper = NetworkHelper(uri);
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async{
    Location location = Location();
    await location.getLocation();
    Uri uri = Uri.https('api.openweathermap.org', '/data/2.5/weather', {
      'lat': location.latitude.toString(),
      'lon': location.longitude.toString(),
      'appid': kApiKey.toString(),
      'units': 'metric'
    });
    NetworkHelper networkHelper = NetworkHelper(uri);
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '๐ฉ';
    } else if (condition < 400) {
      return '๐ง';
    } else if (condition < 600) {
      return 'โ๏ธ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คทโ';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s ๐ฆ time';
    } else if (temp > 20) {
      return 'Time for shorts and ๐';
    } else if (temp < 10) {
      return 'You\'ll need ๐งฃ and ๐งค';
    } else {
      return 'Bring a ๐งฅ just in case';
    }
  }
}
