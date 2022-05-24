class Borneelec
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :adresse, type: String
  field :ville, type: String
  field :codepostal, type: Float
  field :latitude, type: Float
  field :longitude, type: Float
  field :tarif, type: Float
end
