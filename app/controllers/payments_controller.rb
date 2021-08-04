class PaymentsController < ApplicationController
    before_action :authenticate_user!
    def create
        @program = Program.find(params[:program])

        if ENV['RAILS_ENV'] == 'development'
            root_path = 'http://localhost:3000'
            Stripe.api_key = Rails.application.credentials.dig(:stripe, :secret_key)  
        else
            root_path = ENV['ROOT_PATH']
            Stripe.api_key = Rails.configuration.stripe[:secret_key]
        end

              
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

    def success
        @program = Program.find(params[:program])
        if params[:payment] == "success"
            ClientsProgram.create(user: current_user, program: @program)
        end
    end

    def leave_program
        @program = Program.find(params[:id])
        current_user.programs_to_attend.delete(@program)
        redirect_to user_page_path
    end

    def cancel 
    end
end
