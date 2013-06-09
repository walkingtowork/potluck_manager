get "/new_item/:potluck_id" do
  @potluck = Potluck.find(params[:potluck_id])
  erb :"items/new_item"
end

post "/new_item/:potluck_id" do
  @potluck = Potluck.find(params[:potluck_id])
  @item = Item.new(params[:item])

  if @item.save
    redirect "/"
  else
    erb :"items/new_item"
  end
end