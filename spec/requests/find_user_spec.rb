require 'rails_helper'

RSpec.describe "show user", :type => :request do
  it "show users" do
    10.times do |i| User.create!(name: "user #{i}") end
    User.all.map do |u|
      get "/users/#{u.id}"
      json = JSON.parse(response.body)
      expect(response).to be_success
      expect(json['user']['name']).to eq(u.name)
    end
  end
end