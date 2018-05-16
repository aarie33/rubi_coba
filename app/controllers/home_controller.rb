class HomeController < ApplicationController
  def index
    food = ["nasi goreng", "pecel", "soto", "rawon", "sambal"]
    @choose = food.sample
  end
end
