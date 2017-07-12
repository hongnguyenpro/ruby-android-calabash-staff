Given /^I am in the home page/ do

  check_element_exists("android.support.v7.widget.AppCompatTextView marked:'Register Staff'")
end

Then /^I select male in sexual/ do
   check_element_exists("android.support.v7.widget.AppCompatRadioButton marked:'Female'");
end

When(/^I select the date from date picker$/) do
  datePicker = query("datePicker",:method_name =>'updateDate',:arguments =>[2017,06,11])
end

Then /^I select spinner by id "([^"]*)"$/ do |spinnerid|
  touch("* id:'text1'")
  select_item_from_spinner("* text:'Intern'")
end

Then /^I select my department$/ do
  tap_when_element_exists("android.support.v7.widget.AppCompatRadioButton index:3")
end

