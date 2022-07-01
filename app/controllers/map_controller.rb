class MapController < ApplicationController

  def index

    uri = URI("https://opendata.paris.fr/api/records/1.0/search/?dataset=belib-points-de-recharge-pour-vehicules-electriques-donnees-statiques&q=&rows=10&facet=postal_code")
    response = Net::HTTP.get_response(uri)

    data = JSON.parse(response.body)

    @arraypoint2 = []
    @arrayinfo2 = []
    p data["records"][1]
    for item in data["records"]
      tempopoint = [item['geometry']['coordinates'][1], item['geometry']['coordinates'][0]]
      tempoinfo =  [item["recordid"], item['fields']['adresse_station'],item['fields']['arrondissement']]
      @arraypoint2.push(tempopoint)
      @arrayinfo2.push(tempoinfo)
    end

    for key, value in data["records"][1]
      p "#{key} => #{value}"
      if key == "coordinates"
        p data["records"][1]["coordinates"]["latitude"]
        p data["records"][1]["coordinates"]["longitude"]
      end
    end
    @arraycenter=[48.86,2.34]
  end
  def show

    #BDD
    @arraypoint = []
    @arrayinfo = []
    p Borneelec.each { |doc2|
      puts doc2 ['latitude']
      puts doc2 ['longitude']


      tempopoint = [doc2 ['latitude'], doc2 ['longitude']]
      tempoinfo =  [doc2['name'],doc2['adresse'],doc2['codepostal']]
      @arraypoint.push(tempopoint)
      @arrayinfo.push(tempoinfo)
    }

    #API
    uri = URI("https://opendata.paris.fr/api/records/1.0/search/?dataset=belib-points-de-recharge-pour-vehicules-electriques-donnees-statiques&q=&rows=10&facet=postal_code")
    response = Net::HTTP.get_response(uri)



    p"****************************************************************************************"

    data = JSON.parse(response.body)
    @arraypoint2 = []
    @arrayinfo2 = []
    p data["records"][1]
    for item in data["records"]
      tempopoint = [item['geometry']['coordinates'][1], item['geometry']['coordinates'][0]]
      tempoinfo =  [item["recordid"], item['fields']['adresse_station'],item['fields']['arrondissement']]
      @arraypoint2.push(tempopoint)
      @arrayinfo2.push(tempoinfo)
    end

    for key, value in data["records"][1]
      p "#{key} => #{value}"
      if key == "coordinates"
        p data["records"][1]["coordinates"]["latitude"]
        p data["records"][1]["coordinates"]["longitude"]
      end
    end
    @arraycenter=[48.86,2.34]
  end
end
