app = require '../'
pin = require 'linchpin'

pin.on 'GET', (req, res) ->
  res.writeHead 200, 'content-type': 'text/plain'
  res.end 'YOU\'RE FIRED!'

pin.on 'GET/widgets', (req, res) ->
  res.writeHead 200, 'content-type': 'text/plain'
  res.end 'BAM!'

pin.on 'GET/widgets/*', (req, res) ->
  console.log req.url.split('/').pop()
  res.writeHead 200, 'content-type': 'text/plain'
  res.end 'BAM! GET'

pin.on 'POST/widgets', (req, res) ->
  console.log req.params
  res.writeHead 200, 'content-type': 'text/plain'
  res.end 'BAM! POST'

app.httpServer.listen 3000