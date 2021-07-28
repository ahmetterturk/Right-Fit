class SuggestionsController < ApplicationController
    def index
        if current_user.profile 
            if calculated_bmi > 40 
                @suggested_category = Category.find_by(category_name: ['Cardiovascular Training'])
            elsif calculated_bmi > 20 && calculated_bmi < 31
                @suggested_category = Category.find_by(category_name: ['Cardiovascular Training', 'Strength Training'])
            elsif calculated_bmi > 15 && calculated_bmi < 21
                @suggested_category = Category.find_by(category_name: ['Endurance Training', 'Flexibility and Mobility Training'])
            elsif calculated_bmi > 9 && calculated_bmi < 16
                @suggested_category = Category.find_by(category_name: ['Flexibility and Mobility Training'])
            end
        else
            render new_profile_path
        end

        puts '======================'
        puts @suggested_category.each do |category| 
            puts category 
        end
        puts '======================'
    end



    private 
    def calculated_bmi
        user_profile = current_user.profile 
        height = user_profile.height 
        weight = user_profile.weight 
        bmi = (weight / ((height / 100) ** 2))
    end
end
