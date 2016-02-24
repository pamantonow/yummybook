feature 'Signing in' do
  background do
    User.create!(:username => 'username', :email => 'user@example.com', :password => 'password')
  end

  scenario 'Signing in with the correct credentials' do
    visit users_login_path
      # within("#session") do
      def user_login(email, password)
        fill_in 'email', :with => 'user@example.com'
        fill_in 'password', :with => 'caplin'
    
        click_button 'Login'
        expect(page).to have_content 'Logout'
      end
  end
end