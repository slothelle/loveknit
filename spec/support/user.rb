module LoginHelper
  def login
    FactoryGirl.create(:user)
    visit login_path
    fill_in("session[email]", :with => "suzy@queue.com")
    fill_in("session[password]", :with => "password123456")
    click_button("Login")
  end

  def signup
    visit signup_path
    fill_in("First name", :with => "Suzy")
    fill_in("Last name", :with => "Taxo")
    fill_in("Ravelry name", :with => "taxxxo")
    fill_in("Email", :with => "joe@joe.com")
    fill_in("Password", :with => "password123456")
    click_button("Signup")
  end
end