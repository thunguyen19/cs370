
Given /^(?:|I )am on "(.*)'s" tutee page/ do |tutee_name|
  tutee_path(Tutee.find_by_first_name(tutee_name))
end

