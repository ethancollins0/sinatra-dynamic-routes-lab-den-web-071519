require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse!
  end

  get '/square/:number' do
    @num = params[:number].to_i
    (@num * @num).to_s
  end

  get '/say/:num/:phrase' do
    @string = ""
    @num = params[:num].to_i
    @phrase = params[:phrase]
    @num.times {@string += @phrase}
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:num1/:num2' do
    @operation = params[:operation]
    @num1 = params[:num1].to_f
    @num2 = params[:num2].to_i
    symbol = ""
    case @operation
    when "add"
      (@num1 + @num2).to_s
    when "subtract"
      (@num1 - @num2).to_s
    when "multiply"
      (@num1 * @num2).to_s
    when "divide"
      (@num1 / @num2).to_s
    end
  end 

end