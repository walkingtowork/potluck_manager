get "/new_potluck" do
  erb :"potlucks/new_potluck"
end

post "/new_potluck" do
  @potluck = Potluck.new(params[:potluck])

  if @potluck.save
    redirect "/"
  else
    erb :"potlucks/new_potluck"
  end
end

get "/view_potluck/:potluck_id" do
  @potluck = Potluck.find(params[:potluck_id])
  erb :"potlucks/view_potluck"
end

# post "/view_potluck" do

# end

get "/edit_potluck/:potluck_id" do
  @potluck = Potluck.find(params[:potluck_id])
  erb :"potlucks/edit_potluck"
end

post "/edit_potluck/:potluck_id" do
  @potluck = Potluck.find(params[:potluck_id])
  if @potluck.update_attributes(params[:potluck])
    redirect "/"
  else
    erb :"potlucks/edit_potluck"
  end
end

post "/delete_potluck/:potluck_id" do
  @potluck = Potluck.find(params[:potluck_id])
  @potluck.delete
  redirect "/"
end

