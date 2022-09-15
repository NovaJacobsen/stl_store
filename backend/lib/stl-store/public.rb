require "sinatra/base"

module StlStore
  class Public < Sinatra::Base
    set :public_folder, "public"
    get "/" do
      redirect "/index.html"
    end

    before /.*\.js/ do
      content_type 'application/javascript'
    end

    before /.*\.css/ do
      content_type 'text/css'
    end
  end
end
