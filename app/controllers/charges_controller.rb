class ChargesController < ApplicationController

  def new
  end

  def create


    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    current_user.stripe_id = customer.id
    current_user.save()

    Stripe::Subscription.create(
      :customer => current_user.stripe_id,
      :items => [
        {
          :plan => "playd_subscription",
        },
      ],
    )
    UserMailer.receipt(@user).deliver_now

    redirect_to root_path

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

end
