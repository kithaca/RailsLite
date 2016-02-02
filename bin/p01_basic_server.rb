require 'rack'

app = Proc.new do |env|
  req = Rack::Request.new(env)
  res = Rack::Response.new
  res['Content-Type'] = 'text/html'
  disp_text = req.path.split("/").join(" ")
  res.write("#{disp_text}")
  res.finish
end

Rack::Server.start(
  app: app,
  Port: 3000
)
