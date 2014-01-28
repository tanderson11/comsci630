require 'spec_helper'

describe "User pages" do

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }
  end

  describe "edit" do
    let(:user) { FactoryGirl.create(:user) }
    before do
      sign_in user
      visit edit_user_path(user)
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
        fill_in "Email",        with: "example@andover.edu"
        fill_in "Password",     with: "foobar"
        fill_in "Confirmation", with: "foobar"
        click_button "Save changes"
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

      specify { page { should not_have_content("error") } }
    end

    describe "with valid information" do
      let(:new_first)  { "Example" }
      let(:new_last)  { "User" }
      let(:new_email) { "example@andover.edu" }
      before do
        fill_in "First",             with: new_first
        fill_in "Last",             with: new_first
        fill_in "Email",            with: new_email
        fill_in "Password",         with: user.password
        fill_in "Confirm Password", with: user.password
        
      end

      specify { page { should have_selector("div.alert.alert-success") } }
      specify { page { should have_title("new_first") } }
      specify { page { should have_link('Sign out', href: signout_path) } }
      specify { expect(user.reload.first).to  eq new_first }
      specify { expect(user.reload.email).to eq new_email }
    end
  end
end
end

