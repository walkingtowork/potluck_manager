get "/tag_admin" do
  erb :"tags/tag_admin"
end

post "/tag_admin" do
  @tag = Tag.new(params[:tag])

  @tag.save

  erb :"tags/tag_admin"
  end

post "/delete_tag/:tag_id" do
  @tag = Tag.find(params[:tag_id])
  @tag.delete

  erb :"tags/tag_admin"
end