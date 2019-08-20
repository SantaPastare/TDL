
Then (/^I Start a (.*) Second Voice Call$/) do |seconds|
    @pages.home.voiceCallButton.click
    sleep seconds.to_i
    @pages.home.leaveCallButton.click
end