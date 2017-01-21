get '/items' do
  @items = TodoItem.all
  erb :"todo_items/index"
end

get '/items/:id' do
  p params[:id]
  @item = TodoItem.find(params[:id])
 p @item
 erb :"todo_items/show"
end

