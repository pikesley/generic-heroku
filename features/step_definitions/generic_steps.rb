Given(/^I have set the "(.*?)" header to "(.*?)"$/) do |header, value|
  add_headers(
      {
          header => value
      }
  )
end
