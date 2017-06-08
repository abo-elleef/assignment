require 'rails_helper'

RSpec.describe "list users", :type => :request do
  it "list all users" do
    10.times do |i| User.create(name: "user #{i}") end
    get '/users'
    json = JSON.parse(response.body)
    expect(response).to be_success
    expect(json['users'].length).to eq(10)
    expect(json['users'].first['name']).to eq(User.first.name)
    expect(json['users'].last['name']).to eq(User.last.name)
  end
end