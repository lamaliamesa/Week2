require "sinatra"

get "/" do
	"My first Sinatra app."
end

get "/about" do
	"Birthplace: Pensacola"
end

get "/author" do
	@greeting = "Hello World"
	erb(:author)
end

get "/pizza" do
	@ingredients = ["Pepperoni", "Cheese", "Tomato Sauce"]
	erb(:pizza)
end

get "/users/:username" do
	@username = params[:username]
	erb(:user_profile)
end

get "/hours/ago/:number" do
	@number = params[:number]
	@time = Time.now - (@number.to_i*60*60)
	@adjusted_time = @time   #just hour and minutes
	erb(:hours)
end

get "/session_test/:pizza" do
	text = params[:pizza]
	session[:saved_value]=text
end
