And (/^I Change the status to (.*)$/) do |status|
    @pages.home.statusMenu.click
    sleep 2
    page.find(:xpath,"//*[text()='#{status}']").click
    sleep 2
    $user_manager.current_status = status
end

Then (/^I see that status change was successful/) do
    page.find(:css,"[aria-label='SKP, #{$user_manager.current_status}']")
end