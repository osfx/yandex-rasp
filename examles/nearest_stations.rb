require 'yandex_rasp'

apikey = 'your-real-api-key'

params = {
  format: 'json',
  lat: 50.440046,
  lng: 40.4882367,
  lang: 'ru',
  distance: 50
}

request = YandexRasp.nearest_stations(apikey, params)
puts request
