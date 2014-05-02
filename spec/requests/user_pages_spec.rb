require 'spec_helper'

describe "User pages" do
  subject { page }
  
  describe "new user page" do
    before { visit users_new_path }
    
    it { should have_content('Skapa användare') }
    it { should have_title(full_title('Skapa användare')) }
  end
end
