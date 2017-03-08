require 'sinatra/base'
require './app/models/link'

class BookmarkManager < Sinatra::Base
  #enable :sessions

  get "/" do
    erb(:index)
  end

  get "/bookmarks" do
    # links = []
    # Link.all.each do |l|
    #   links << l.url.to_s
    # end
    # @links = links.join("\n")
    @links = Link.all
    erb(:bookmarks)
  end

  get "/bookmarks/new" do
    erb :bookmarks/new
  end

  post '/bookmarks'

  end

end
