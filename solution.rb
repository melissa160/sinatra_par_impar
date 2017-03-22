require 'sinatra'

get '/' do
  @numbers = []
  50.times do |i|
    (i+1).odd? ? state = "Soy Impar!" : state = "Soy Par!"
    @numbers << {number: i+1, state: state} 
  end
  erb :index
end