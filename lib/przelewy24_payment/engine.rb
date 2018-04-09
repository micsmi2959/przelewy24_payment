module Przelewy24Payment
  class Engine < Rails::Engine

    engine_name 'przelewy24_payment'

    config.autoload_paths += %W(#{config.root}/lib)

    initializer "spree.gateway.payment_methods", :after => "spree.register.payment_methods" do |app|
      app.config.spree.payment_methods << Spree::PaymentMethod::P24Payment
    end

#    config.to_prepare do
      #loads application's model / class decorators
#      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
#        Rails.application.config.cache_classes ? require(c) : load(c)
#      end
#    end
  end
end
