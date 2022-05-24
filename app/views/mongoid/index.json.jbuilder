json.array!(@bornelecs) do |borneelec|
  json.extract! borneelec, :id, :name, :adresse, :ville,:codepostal,:latitude,:longitude,:tarif
  json.url mongoid_url(borneelec, format: :json)
end
