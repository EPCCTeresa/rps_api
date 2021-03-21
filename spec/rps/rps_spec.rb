# frozen_string_literal: true
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'spec_helper'
require './lib/rps/rps'
require 'byebug'

RSpec.describe Rps do
  context '#get_serialized_result when user chooses rock' do
    let(:options) { { :name=>"test", :move=>"rock"} }
    let(:user_wins_msg) { "#{options[:name]} wins"}
    let(:bot_wins_msg) { "Bot wins" }
    let(:tie_msg) { "Tie" }

    it 'user wins against scissors' do
      byebug
      rps = Rps::Comparator.new(options, "scissors")
      expect(rps.get_serialized_result[:result]).to eq(user_wins_msg.to_s)
    end

    it 'user ties against rock' do
      rps = Rps::Comparator.new(options, "rock")
      expect(rps.get_serialized_result[:result]).to eq(tie_msg.to_s)
    end

    it 'paper loses against scissors' do
      rps = Rps::Comparator.new(options, "paper")
      expect(rps.get_serialized_result[:result]).to eq(bot_wins_msg.to_s)
    end

    it 'return a Hash' do
      rps = Rps::Comparator.new(options, "paper")
      expect(rps.get_serialized_result.class).to eq(Hash)
    end
  end

end