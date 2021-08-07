class SuggestionsController < ApplicationController
    before_action :authenticate_user!, only: [:index]

    def index
        @programs = []

        if current_user.profile 
            if calculated_bmi > 30
                array = ['Cardiovascular Training']
            elsif calculated_bmi > 21 && calculated_bmi < 30
                array = ['Cardiovascular Training', 'Strength Training']
            elsif calculated_bmi > 16 && calculated_bmi < 21
                array = ['Endurance Training', 'Flexibility and Mobility Training']
            elsif calculated_bmi < 16
                array = ['Flexibility and Mobility Training']
            end
            
            suggested_categories = set_categories(array)

            suggested_categories.each do |category|
                category.programs.includes([image_attachment: :blob]).each do |program| 
                    @programs << program
                end 
            end
    
            return @programs
        else
            redirect_to new_profile_path
        end
    end

    private 
    def calculated_bmi
        user_profile = current_user.profile 
        height = user_profile.height 
        weight = user_profile.weight 
        bmi = (weight / ((height / 100) ** 2))
    end

    def set_categories(list)
        # Category.where(category_name: list).to_a
        Category.where(category_name: list)
    end
end
