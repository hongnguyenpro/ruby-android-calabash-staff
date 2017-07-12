Given /^I am in the list of staff/ do
  wait_for_text("A1", timeout: 10)
end

Given /^I move down/ do
  scroll('recyclerView', :down)
end

Given /^I select staff at row 14/ do
  element = query("android.support.v7.widget.AppCompatTextView marked:'A14'")
  touch(element);
end


