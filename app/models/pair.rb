class Pair < ApplicationRecord
  belongs_to :idea_one, :class_name => "Idea"
  belongs_to :idea_two, :class_name => "Idea"
end
