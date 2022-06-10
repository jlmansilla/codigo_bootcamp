require 'net/http'
Net::HTTP.get('emol.cl', '/index.html')

net = Net::HTTP.new("emol.cl", 443)
net.use_ssl = true
net.get_response("/")