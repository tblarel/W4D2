

class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper
    COLORS = ['Black', 'Brown', 'White', 'Orange', 'Grey']
    validates :color, inclusion: { in: COLORS, message: "%{value} is not a good color" }
    validates :sex, inclusion: {in: ['M', 'F'], message: "Cat sex must be M or F"}
    validates :name, :birth_date, presence: true

    def age
        
        time_ago_in_words(self.birth_date).capitalize

    end


end
