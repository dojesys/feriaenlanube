require 'spec_helper'

describe AdminController do

  before (:each) do
    @user = Factory(:user)
    sign_in @user
  end

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

end
