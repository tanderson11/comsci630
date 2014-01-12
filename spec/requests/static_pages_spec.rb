require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Techmasters'" do
      visit '/static_pages/home'
      expect(page).to have_content('Techmasters')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Techmasters")
    end
  end

  describe "Help page" do

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Techmasters | Help")
    end
  end

  describe "About page" do

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Techmasters | About Us")
    end
  end
end
