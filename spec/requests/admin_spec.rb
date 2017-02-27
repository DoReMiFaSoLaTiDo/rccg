# spec/reqeusts/admin_spec.rb
require 'rails_helper'

RSpec.describe "Dashboard", type: :request do
  describe "GET /admin" do

    it "accesses the dashboard" do
      User.create(
        email: 'user@example.com',
        password: 'secret007',
        password_confirmation: 'secret007'
      )

      visit root_path
      click_link 'Login'
      fill_in 'Email Address', with: 'user@example.com'
      fill_in 'Password', with: 'secret007'
      click_button 'Log in'

      raise current_path.inspect #should eq admin_dashboard_url
      within 'h1' do
        page.should have_content 'Administration'
      end
      page.should have_content 'Manage Users'
      page.should have_content 'Manage Events'
    end
  end
end
