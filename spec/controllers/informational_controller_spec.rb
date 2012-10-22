require 'spec_helper'

describe InformationalController do

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'help'" do
    it "returns http success" do
      get 'help'
      response.should be_success
    end
  end

  describe "GET 'legal'" do
    it "returns http success" do
      get 'legal'
      response.should be_success
    end
  end

end
