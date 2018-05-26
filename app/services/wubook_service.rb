require 'singleton'
require 'xmlrpc/client'



class WubookService
    include Singleton
    attr_accessor :token,:username,:lcode,:password

    def initialize
        @access_token=nil
        @client=nil
        @username=nil
        @lcode=nil
        @password=nil
        @token=nil
    end

    def fetchRooms
        client = self.getClient
        token = self.getToken
        rooms_resp = client.call('fetch_rooms',token,@lcode)
        return rooms_resp[1]
    end


    def fetchReservation( dfrom=nil, dto=nil)
        client = self.getClient
        token = self.getToken
        
        res_resp = client.call('fetch_bookings',token,@lcode,dfrom,dto,false)

        Rails.logger.debug res_resp

        return res_resp[1]
        
    end

    def getToken
        if  ( @access_token == nil)
            client = self.getClient
            token_resp = client.call("acquire_token", @username, @password, @token)
            
            Rails.logger.debug "getToken - Received : "+ token_resp[1]

            if (token_resp[0] == 0  )
                @access_token = token_resp[1]
            end
        end

        return @access_token
    end

    def getClient
        if(@client == nil)
            @client = XMLRPC::Client.new2("https://wired.wubook.net/xrws/")
            @client.instance_variable_get("@http").verify_mode = OpenSSL::SSL::VERIFY_NONE
        end
        
        XMLRPC::Client.class_eval do
            def parse_content_type(a)
              ['text/xml']
            end
        end

        return @client
    end
end