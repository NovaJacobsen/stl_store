require "sinatra/base"

module StlStore
  class Api < Sinatra::Base
    post "/ping" do
      "pong"
    end

    get "/ping" do
      "pong"
    end
  end
end
