require 'byebug'
module Rps
  class Comparator
    def initialize(options, bot = nil)
      @guess_choice = options[:move]
      @guess_name = options[:name]
      @bot = bot || generate_bot_answer
      byebug
    end

    def get_serialized_result
      { :moves => [{ :name => @guess_name, :move => @guess_choice}, { :name => "Bot", :move => @bot }], :result => get_result } 
    end

    private

    def get_result
      byebug
      puts "Bot: #{@bot}"
      puts "User: #{@guess_choice}"
      return if @guess_choice.nil?
      return "Tie" if @guess_choice == @bot
      return "#{@guess_name} wins" if guess_wins?
      return "Bot wins"
    end

    def guess_wins?
      criteria.keys.include?(@guess_choice.to_sym) && criteria[@guess_choice.to_sym].first == @bot
    end

    def generate_bot_answer
      options = %w[rock paper scissors]
      options.sample
    end

    def criteria
      {
        'scissors': ['paper'],
        'rock': ['scissors'],
        'paper': ['rock']
      }
    end
  end
end