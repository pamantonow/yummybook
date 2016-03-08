require  'spec_helper'


describe "the register process", :type => :feature do
  before :each do
    User.create!(:username=> 'user', :email => 'user@example.com', :password => 'password')
  end

  it "signs me in" do
    def register_with(username, email, password)
      visit new_user_path
      fill_in "username", with: username
      fill_in "email", with: email
      fill_in "password", with: password

      click_button "Register"
      expect(page).to have_content 'Logout'
    end
  end


end

