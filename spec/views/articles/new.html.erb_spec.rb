require 'rails_helper'

RSpec.describe 'articles/new.html.erb', type: :system do
  describe 'New Article' do
    it 'User sign-up is correct' do
      # Access Home Page
      visit('/')

      sleep 1
      # Go to Sign Up page
      click_link('Sign up')

      # Sign up
      sleep 1
      fill_in('name', with: 'Test')
      fill_in('password', with: 'password')
      fill_in('password_confirmation', with: 'password')
      sleep 1
      click_button('Sign up')

      # click on article link
      sleep 5
      click_link('Create new article')
      sleep 1

      # new article
      fill_in('article[title]', with: 'Test article title')
      fill_in('article[text]', with: 'Test article text 123123123 123123 123')
      sleep 1

      find("input[type='submit']").click
    end
  end
end
