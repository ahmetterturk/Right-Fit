class SuggestionsController < ApplicationController
    before_action :authenticate_user!, only: [:index]

    def index
        @programs = []

        if current_user.profile 
            if calculated_bmi > 31
                suggested_categories = Category.where(category_name: ['Cardiovascular Training']).to_a
            elsif calculated_bmi > 20 && calculated_bmi < 31
                suggested_categories = Category.where(category_name: ['Cardiovascular Training', 'Strength Training']).to_a
            elsif calculated_bmi > 15 && calculated_bmi < 21
                suggested_categories = Category.where(category_name: ['Endurance Training', 'Flexibility and Mobility Training']).to_a
            elsif calculated_bmi < 16
                suggested_categories = Category.where(category_name: ['Flexibility and Mobility Training']).to_a
            end

            suggested_categories.each do |category|
                category.programs.each do |program| 
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

    def get_programs(category)
        category.each do |category|
            category.programs
        end
    end
end
