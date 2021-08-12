class SuggestionsController < ApplicationController
    # authenticate user receiving a suggestion
    before_action :authenticate_user!, only: [:index]


    def index
        # is user has an existing profile, get the results of the calculated_bmi private method, else redirect to the new profile form
        # according to the bmi values, set the suggested_categories variables to specified category values that are defined in the Category model with scopes.
        if current_user.profile 
            if calculated_bmi > 27
                suggested_categories = Category.cardio
                @result = "Cardiovascular Training"
            elsif calculated_bmi > 21 && calculated_bmi < 27
                suggested_categories = Category.cardio_and_strength
                @result = "Strength and Cardiovascular Training"
            elsif calculated_bmi > 16 && calculated_bmi < 21
                suggested_categories = Category.endurance_and_flexbility
                @result = "Endurance and Flexibility and Mobility Training"
            elsif calculated_bmi < 16
                suggested_categories = Category.flexibility
                @result = "Flexibility and Mobility Training"
            end

            # run a query on all programs with the scope method defined in the Program model and find the matching values with the suggested programs determined in the conditionals above 
            @programs = Program.suggested_programs(suggested_categories).includes([:category, image_attachment: :blob])
        else
            redirect_to new_profile_path
        end
    end

    private 
    # get the values in the user's profile and calculate the bmi from the values
    def calculated_bmi
        user_profile = current_user.profile 
        height = user_profile.height 
        weight = user_profile.weight 
        bmi = (weight / ((height / 100) ** 2))
    end
end
