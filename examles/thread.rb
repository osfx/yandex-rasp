require 'yandex_rasp'

apikey = 'your-real-api-key'

params = {
  format: 'json',
  uid: '038AA_tis',
  lang: 'ru',
  show_systems: 'all'
}

request = YandexRasp.thread(apikey, params)
puts request
