class Event
  include Mongoid::Document
  field :title, type: String
  field :date, type: String
  field :description, type: String
  field :location, type: String
end

