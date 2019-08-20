And (/^I Change the status to (.*)$/) do |status|
    @pages.home.statusMenu.click
    sleep 2
    page.find(:xpath,"//*[text()='#{status}']").click
    sleep 2
end