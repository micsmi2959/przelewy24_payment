module Przelewy24Payment
  class Engine < Rails::Engine

    engine_name 'przelewy24_payment'

    config.autoload_paths += %W(#{config.root}/lib)

    initializer "spree.gateway.payment_methods", :after => "spree.register.payment_methods" do |app|
      app.config.spree.payment_methods << Spree::PaymentMethod::Przelewy24Payement
    end

  end
end
