require 'rails_helper'

describe "the add a movie process" do
  it "adds a new movie" do
    visit movies_path
    click_on "Add a new Movie"
    fill_in 'Title', :with => 'Test Title'
    fill_in 'Director', :with => 'That French Guy'
    fill_in 'Synopsis', :with => 'A movie with Guy Richie'
    click_on 'Add Movie'
    expect(page).to have_content 'Test Title'
  end
end
