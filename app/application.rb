class Application

  def call(env)

    resp = Rack::Response.new
    req = Rack::Response.new(env)

    if req.path=="/items"
      item_name = 
    else
      resp.write = "Page Not Found"
      resp.status = 404
    end

  end

end
