class Pair < ApplicationRecord
  has_one :idea_one, :class_name => "Idea"
  has_one :idea_two, :class_name => "Idea"
end
