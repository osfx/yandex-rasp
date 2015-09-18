require 'yandex_rasp'

apikey = 'your-real-api-key'

params = {
  format: 'json',
  from: 'c146',
  to: 'c213',
  lang: 'ru',
  page: 1,
  date: '2015-09-03'
}

request = YandexRasp.search(apikey, params)
puts request
