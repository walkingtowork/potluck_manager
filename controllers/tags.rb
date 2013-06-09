get "/tags/tag_admin" do
  erb :tag_admin
end

post "/tags/tag_admin" do
  @tag = Tag.new(params[:tag])

  if @tag.save
    redirect "/"
  else
    erb :"tags/tag_admin"
  end
end