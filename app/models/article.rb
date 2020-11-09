class Article < ApplicationRecord
  validates_presence_of :title #telling our model that it has to validate every article we try to save has a title before sending to db
end
