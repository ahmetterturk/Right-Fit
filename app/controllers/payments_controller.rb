class PaymentsController < ApplicationController
    before_action :authenticate_user! # authenticate the user before performing a payment
    
    def create
        # determine the program by fetching the id of the program passed into the params when the purchase button is clicked in the show view
        @program = Program.find(params[:program])

        # configuring stripe root path values depending on the running environment of the program(local and deployed to heroku)
        # fething the api keys from the credentials file
        if ENV['RAILS_ENV'] == 'development'
            root_path = 'http://localhost:3000'
            Stripe.api_key = Rails.application.credentials.dig(:stripe, :secret_key)  
        else
            root_path = ENV['ROOT_PATH']
            Stripe.api_key = Rails.configuration.stripe[:secret_key]
        end

        # stripe checkout functionality settings
        session = Stripe::Checkout::Session.create({
            payment_method_types: ['card'],
            line_items: [{
                price_data: {
                currency: 'aud',
                product_data: {
                    name: @program.title,
                    images: [@program.image.service_url],
                },
                unit_amount: @program.price.to_i * 100,
                },
                quantity: 1,
            }],
            mode: 'payment',
            success_url: "#{root_path}#{payment_success_path}?program=#{@program.id}&payment=success",
            cancel_url: "#{root_path}/programs/#{@program.id}",
        })
        redirect_to session.url
    end

    # upon successful payment, create a "client-attended program" relationship between the user and program in the ClientPrograms joined table
    # determine the program by fetching the id of the program passed into the params upon successful payment
    def success
        @program = Program.find(params[:program])
        if params[:payment] == "success"
            ClientsProgram.create(user: current_user, program: @program)
        end
    end

    # determine the program by fething the id from the params 
    # remove the relationship in the ClientPrograms table between user and the program
    def leave_program
        @program = Program.find(params[:id])
        current_user.programs_to_attend.delete(@program)
        redirect_to user_page_path
    end
end
