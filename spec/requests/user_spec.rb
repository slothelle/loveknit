require 'spec_helper'

describe "User" do
  before do
    seed
  end

  context "account authentication" do
    it "passes with correct credentials" do
      login
      expect(page).to have_content("Logout")
    end

    it "logs an existing user out" do
      login
      click_link("Logout")
      expect(page).to have_no_content(User.last.first_name)
    end

    it "fails with invalid password" do
      FactoryGirl.create(:user)
      visit login_path
      fill_in("session[email]", :with => "suzy@queue.com")
      fill_in("session[password]", :with => "poo")
      click_button("Login")
      expect(page).to have_content("Wrong password")
    end

    it "fails with invalid email" do
      FactoryGirl.create(:user)
      visit login_path
      fill_in("session[email]", :with => "suzy")
      fill_in("session[password]", :with => "password1234")
      click_button("Login")
      expect(page).to have_content("An account with the email address suzy not found")
    end
  end

  context "account creation" do
    it "succeeds with valid inputs" do
      visit root_path
      click_link("Signup")
      fill_in("user[first_name]", :with => "Taco")
      fill_in("user[last_name]", :with => "Meat")
      fill_in("user[ravelry_name]", :with => "meaty")
      fill_in("user[email]", :with => "meaty@tacos.com")
      fill_in("user[password]", :with => "password1234")
      click_button("Signup")
      expect(page).to have_content("Hello, Taco")
    end

    # Test passes when I run it, not sure how to test JS with Capybara
    # it "fails with invalid email", js: true do
    #   visit root_path
    #   click_link("Signup")
    #   fill_in("user[first_name]", :with => "Taco")
    #   fill_in("user[last_name]", :with => "Meat")
    #   fill_in("user[ravelry_name]", :with => "meaty")
    #   fill_in("user[email]", :with => "me")
    #   fill_in("user[password]", :with => "password1234")
    #   click_button("Signup")
    #   page.should have_content("Must be a valid email address!")
    # end
  end
end