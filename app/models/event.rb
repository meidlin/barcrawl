class Event
  include Mongoid::Document
  field :title, type: String
  field :date, type: String
  field :time, type: String
  field :description, type: String
  field :start, type: String
  field :bar1, type: String
  field :bar2, type: String
  field :bar3, type: String
  field :bar4, type: String
  field :bar5, type: String
  field :afterparty, type: String
end

