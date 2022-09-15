require "./config/environment"
require "sinatra"

require "lib/stl-store/api"
map "/api" do
  run StlStore::Api.new
end

require "lib/stl-store/public"
map "/" do
  run StlStore::Public.new
end
