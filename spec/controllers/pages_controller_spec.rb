require 'rails_helper'
require 'spec_helper'

RSpec.describe PagesController, :type => :controller do
  render_views
  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end

    it "should have the right title" do
      get 'home'
      response.should_have_selector('title', content: "Sample App | Home")
    end
  end

  describe "GET contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end

    it "should have the right title" do
      get 'contact'
      response.should_have_selector('title', content: "Sample App | Contact")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
      get 'about'
      response.should_have_selector('title', content: "Sample App | About")
    end
  end
end

