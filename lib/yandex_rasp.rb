require "yandex_rasp/version"
require "httparty"

module YandexRasp
  URI = 'https://api.rasp.yandex.net/v1.0'

        def initialize(apikey, params)
          @apikey = apikey
          @params = params
        end

        def self.search(apikey, params)
          r = HTTParty.get("#{URI}/search/?apikey=#{apikey}", query: params)
          if r.code == 200
            r.body
          else
            return r.code
          end
        end

        def self.shedule(apikey, params)
          r = HTTParty.get("#{URI}/schedule/?apikey=#{apikey}", query: params)
          if r.code == 200
            r.body
          else
            return r.code
          end
        end

        def self.thread(apikey, params)
          r = HTTParty.get("#{URI}/thread/?apikey=#{apikey}", query: params)
          if r.code == 200
            r.body
          else
            return r.code
          end
        end

        def self.carrier(apikey, params)
          r = HTTParty.get("#{URI}/carrier/?apikey=#{apikey}", query: params)
          if r.code == 200
            r.body
          else
            return r.code
          end
        end

        def self.nearest_stations(apikey, params)
          r = HTTParty.get("#{URI}/nearest_stations/?apikey=#{apikey}", query: params)
          if r.code == 200
            r.body
          else
            return r.code
          end
        end

        def self.copyright(apikey)
          r = HTTParty.get("#{URI}/copyright/?apikey=#{apikey}&format=json")
          if r.code == 200
            r.body
          else
            return r.code
          end
        end
end
