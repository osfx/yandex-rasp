require 'yandex_rasp'

apikey = 'your-real-api-key'

params = {
  format: 'json',
  code:'TK',
  system: 'iata',
}

request = YandexRasp.carrier(apikey, params)
puts request
