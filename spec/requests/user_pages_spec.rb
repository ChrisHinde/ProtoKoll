require 'spec_helper'

describe "User pages" do
  subject { page }
  
  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }
  
    it { should have_content(user.name) }
    it { should have_title(user.name) }
  end
  
  describe "new user page" do
    before { visit new_user_path }
    
    let(:submit) { "Skapa användare" }
    
    it { should have_content('Skapa användare') }
    it { should have_title(full_title('Skapa användare')) }
    
    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
      
      describe "after submission" do
        before { click_button submit }

        it { should have_title('Skapa användare') }
        it { should have_content('fel!') }
      end
    end

    describe "with valid information" do
      before do
        fill_in "Namn",     with: "Example User"
        fill_in "E-post",   with: "user@example.com"
        fill_in "Lösenord", with: "foobar"
        fill_in "Bekräfta", with: "foobar"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
      
      describe "after saving the user" do
        before { click_button submit }
        let(:user) { User.find_by(email: 'user@example.com') }

        it { should have_title(user.name) }
        it { should have_selector('div.alert.alert-success', text: 'Ny användare skapad!') }
      end
    end
  end
end
