module MWS

  class Base
    
    attr_accessor :connection

    def initialize(options={})
      @connection = MWS::Connection.new(options)
    end

    def orders
      @orders ||= MWS::API::Order.new(@connection)
    end

    def inventory
      @inventory ||= MWS::API::Inventory.new(@connection)
    end

    def reports
      @reports ||= MWS::API::Reports.new(@connection)
    end

    def product
      @product ||= MWS::API::Product.new(@connection)
    end

    def sellers
      @sellers ||= MWS::API::Sellers.new(@connection)
    end

    def fulfillment
      @fulfillment ||= MWS::API::Fulfillment.new(@connection)
    end

    # serves as a server ping
    def self.server_time
      MWS::Connection.server_time
    end

  end
end
