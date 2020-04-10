class Idea < ApplicationRecord
    has_many :entries 
    has_many :users, through: :entries 

    has_many :idea_one_pairs, :class_name => "Pair", :foreign_key => 'idea_one_id'
    has_many :idea_two_pairs, :class_name => "Pair", :foreign_key => 'idea_two_id'

    validates :name, uniqueness: true 
end
