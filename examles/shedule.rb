require 'yandex_rasp'

apikey = 'your-real-api-key'

params = {
  format: 'json',
  station: 's9600213',
  lang: 'ru',
  transport_types: 'suburban',
  date: '2015-09-03'
}

request = YandexRasp.shedule(apikey, params)
puts request
