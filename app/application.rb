class Application

  @@items = []

  def call(env)

    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      item = @@items.find {|i| i.name == item_name}
      resp.write add_item(item)
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish

  end

  def add_item(item)
    if @@items.include?(item)

    end
  end
end
