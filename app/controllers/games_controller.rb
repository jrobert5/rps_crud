class GamesController < ApplicationController



  def play_rock
    @player_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "You tie"
    elsif @computer_move == "paper"
      @outcome = "You lose"
    else
      @outcome = "You win!"
    end

    r = Round.new
    r.computer_move=@computer_move
    r.player_move = @player_move
    r.outcome = @outcome
    r.save
    render("/games/play_rock.html.erb")

  end





  def play_paper
    @player_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "You win!"
    elsif @computer_move == "paper"
      @outcome = "You tie"
    else
      @outcome = "You lose"
    end

    r = Round.new
    r.computer_move=@computer_move
    r.player_move = @player_move
    r.outcome = @outcome
    r.save

    render("/games/play_paper.html.erb")
  end






  def play_scissors
    @player_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "You lose"
    elsif @computer_move == "paper"
      @outcome = "You win!"
    else
      @outcome = "You tie"
    end


    r = Round.new
    r.computer_move=@computer_move
    r.player_move = @player_move
    r.outcome = @outcome
    r.save

    render("/games/play_scissors.html.erb")
  end





  def index
    render("/games/index.html.erb")
  end



end
