get "/new_item/:potluck_id" do
  @potluck = Potluck.find(params[:potluck_id])
  erb :"items/new_item"
end

post "/new_item/:potluck_id" do
  @potluck = Potluck.find(params[:potluck_id])
  @item = Item.new(params[:item])

  if @item.save
    @item.update_attributes(:potluck_id => @potluck.id)
    redirect "/"
  else
    erb :"items/new_item"
  end
end


#CLAIM ITEM
get "/claim_item/:item_id" do
  @item = Item.find(params[:item_id])

  erb :"items/claim_item"
end

post "/claim_item/:item_id" do
  @item = Item.find(params[:item_id])

  @person = Person.find_or_create_by_name(params[:person][:name])

  @item.update_attributes(:person_id => @person.id)

  erb :"items/claim_item"
end


#DELETE ITEM
post "/delete_item/:item_id" do
  @item = Item.find(params[:item_id])
  @item.delete

  erb :"items/new_item"
end

