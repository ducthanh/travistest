require 'action.rb'
action001 = Action.new

Given(/^Open the HGWM page$/) do
  action001.goto 
  set_window_size(1150, 1300)
end

Then(/^I should see SEARCH button$/) do
  page.should have_xpath("//input[contains(@class, \"btn submit-btn pull-left\")]")
end

Then(/^I should see SIGN UP \/ LOGIN button$/) do
  page.should have_content("SIGN UP / LOGIN")
end

Then(/^I should see Discovery button$/) do
  page.should have_content("Discovery")
end

Then(/^I should see the Choosen for you button$/) do
  page.should have_content("Chosen for you")
end

Then(/^I should see Social button$/) do
  page.should have_content("Social")
end

Then(/^I should see Food Guide button$/) do
  page.should have_content("Food Guide")
end

Then(/^I should see Recipes button$/) do
  page.should have_content("Recipes")
end

Then(/^I should see Happenings button$/) do
  page.should have_content("Happenings")
end

Then(/^I should see Popular Searches field$/) do
  page.should have_content("Popular Searches")
end

Then(/^I should see Leaderboard button$/) do
  page.should have_content("Leaderboard")
end

Then(/^I click Social button$/) do
 find('#sort-social a').click
end

Then(/^The Social tab should highlight$/) do
  page.should have_css('div#sort-social a.is-active')
end

Then(/^I click Food Guide button$/) do
  find('#sort-editorials a').click
  sleep 1
end

Then(/^the Food Guide tab should be highlight$/) do
  find('.current-menu-item').text.should eq "Food Guide"
end

Then(/^I click Recipes button$/) do
  find('a[href="/food-guide/category/recipes/"]').click
end

Then(/^the Recipes tab should be highlight$/) do
  find('.current-menu-item').text.should eq "Recipes"
end

Then(/^I click Happenings button$/) do
  find('a[href="/food-guide/happenings/"]').click
end

Then(/^the Happenings tab should be highlight$/) do
  find('.current-menu-item').text.should eq "Happenings"
end

#page.select 'March', :from => 'Month'
Then(/^I select Penang$/) do
  action001.goto
  find(:css,'div.navbar div.desktop-nav-wrapper div.navbar-inner div.container ul.nav li.col div.flag-panel span.caret').click
  click_link('Penang')
end

Then(/^Penang page should be displayed$/) do
  page.should have_content("Penang")
end

Then(/^I select Johor$/) do
  find(:css,'div.navbar div.desktop-nav-wrapper div.navbar-inner div.container ul.nav li.col div.flag-panel span.caret').click
  click_link('Johor')
end

Then(/^Johor page should be displayed$/) do
  page.should have_content("Johor")
end

Then(/^I select Melaka$/) do
  find(:css,'div.navbar div.desktop-nav-wrapper div.navbar-inner div.container ul.nav li.col div.flag-panel span.caret').click
  click_link('Melaka')
end

Then(/^Melaka page should be displayed$/) do
  page.should have_content("Melaka")
end

Then(/^I select Ipoh$/) do
  find(:css,'div.navbar div.desktop-nav-wrapper div.navbar-inner div.container ul.nav li.col div.flag-panel span.caret').click
  click_link('Ipoh')
end

Then(/^Ipoh page should be displayed$/) do
  page.should have_content("Ipoh")
end

Then(/^I select Klang Valley$/) do
  find(:css,'div.navbar div.desktop-nav-wrapper div.navbar-inner div.container ul.nav li.col div.flag-panel span.caret').click
  click_link('Klang Valley')
end

Then(/^Klang Valley page should be displayed$/) do
 page.should have_content("Klang Valley")
end