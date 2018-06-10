class Application

  def call(env)

    resp = Rack::Response.new
    req = Rack::Response.new(env)

    if req.write.match(/items/)
      resp.write "Found item."

  end

end
