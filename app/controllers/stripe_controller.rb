class StripeController < ApplicationController
  def index

    Stripe.api_key = 'sk_0JnCfvzjrWVNo1kiCnagagc7RyBdE'

    resp = Stripe::PaymentIntent.create({
      amount: 1000,
      currency: 'usd',
      payment_method_types: ['card'],
      receipt_email: 'jenny.rosen@example.com',
    })

    render json: resp

  end
end
