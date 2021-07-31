module BMI
    def calculated_bmi(user)
        user_profile = user.profile 
        height = user_profile.height 
        weight = user_profile.weight 
        bmi = (weight / ((height / 100) ** 2))
    end
end