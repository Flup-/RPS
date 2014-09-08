require 'sinatra'

#Get
#Post
#Put
#Head

set :port, 1337

get "/" do
	"Hello World"
end

get "/nope" do
	"NOPE.avi"
end

get "/fly/:name" do
	"Hello " + params[:name] + "!"
	#passing data to the server in the route
	#e.g. 127.0.0.1/fly/Fred
end

get "/me" do
	params[:age] + " Is pretty old, " + params[:name]
end

get "/rock" do
	comp = rand(3)
	if comp == 0
		return "<img src='PAPER.jpg'> Looks like you are no match for me!"
	end
	if comp == 1
		return "<img src='ROCK.jpg'> Looks like a tie! You are a worthy opponent!"
	end
	if comp == 2
		return "<img src='SCIS.jpg'> How could you have bested me!"
	end
end

get "/paper" do
	comp = rand(3)
	if comp == 0 
		return "<img src='SCIS.jpg'> Looks like you are no match for me!"
	end
	if comp == 1
		return "<img src='PAPER.jpg'> Looks like a tie! You are a worthy opponent!"
	end
	if comp == 2
		return "<img src='ROCK.jpg'> How could you have bested me!"
	end
end

get "/scissors" do
	comp = rand(3)
	if comp == 0 
		return "<img src='ROCK.jpg'> Looks like you are no match for me!"
	end
	if comp == 1
		return "<img src='SCIS.jpg'> Looks like a tie! You are a worthy opponent!"
	end
	if comp == 2
		return "<img src='PAPER.jpg'> How could you have bested me!"
	end
end

get "/:file" do
	send_file params[:file], :type => File.extname(params[:file])
end