p ENV['RACK_ENV']
ENV['RACK_ENV'] ||='development'
p ENV['RACK_ENV']

require 'sinatra/base'
require './app/models/link'


class BookmarkManager < Sinatra::Base
  #enable :sessions

  get "/" do
    erb(:index)
  end

  get "/bookmarks" do
    @links = Link.all
    erb(:bookmarks)
  end

  get "/bookmarks/new" do
    erb(:new)#:bookmarks/new
  end

  post '/bookmarks' do
    Link.create(
    :title => params[:title],
    :url => params[:url]
    )
    redirect "/bookmarks"
  end

end
