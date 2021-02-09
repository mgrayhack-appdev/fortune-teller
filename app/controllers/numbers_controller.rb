class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 
  def winners_losers
    @list_unlucky = Array.new

    5.times do
      fil_with_num = rand(1...100)
      
      @list_unlucky.push(fil_with_num)
    end

    render({ :template => "lottery_stuff/shoot.html.erb"})
  end
end
