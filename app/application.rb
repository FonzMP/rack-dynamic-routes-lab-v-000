class Application

  @@items = []

  def call(env)

    resp = Rack::Response.new
    req = Rack::Response.new(env)

    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      item = @@items.find {|i| i.name == item_name}
      resp.write item.name
    else
      resp.write = "Page Not Found"
      resp.status = 404
    end

  end

end
