require 'spec_helper'

describe "User pages" do

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }
  end

  describe "signup page" do

    before { visit signup_path }

    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "First",        with: "Example"
        fill_in "Last",         with: "User"
        fill_in "Email",        with: "user@example.com"
        fill_in "Password",     with: "foobar"
        fill_in "Confirmation", with: "foobar"
		expect do
		  click_button "Create my account"
		end.to change(User, :count).by(1)
      end
    end
  end

  describe "edit" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit edit_user_path(user) }

    describe "page" do
      specify { page { should have_content("Update your profile") } }
      specify { page { should have_title("Edit User") } }
      specify { page { should have_link('change', href: 'http://gravatar.com/emails') } }
    end

    describe "with invalid information" do
      before { click_button "Save changes" }

      specify { page { should have_content("error") } }
    end
  end
end


