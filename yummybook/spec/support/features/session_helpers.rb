require 'spec_helper'

module Features
  module SessionHelpers
    def register_with(username, email, password)
      visit new_user_path
      fill_in "username", with: username
      fill_in "email", with: email
      fill_in "password", with: password

      click_button "Register"
    end

    def create_user
      User.create!(username: "Robert", email: "robert@gmail.com", password: "password")
    end
  end
end