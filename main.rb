require 'rest-client'


class MyRestClient
    def get(url)
        RestClient.get(url)    
    end
    
end