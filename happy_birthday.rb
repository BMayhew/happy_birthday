require 'watir-webdriver'
@config = {
	url: 'http://www.facebook.com', 
	birthday: '/events/birthdays',
	day: 86400,
	wish: 'Wish you a very happy birthday! :)'
}
@account = {
	username: 'username_here', 
	password: 'password_here'
}
 
@locator = {
	email_id: 'email',
	password_id: 'pass',
	login_value: 'Log In'
}
 
while true
	@b=Watir::Browser.new :chrome
	@b.driver.manage.window.maximize
	@b.goto(@config[:url])
	@b.text_field(:id => @locator[:email_id]).set @account[:username]
	@b.text_field(:id => @locator[:password_id]).set @account[:password]
	@b.button(:value => @locator[:login_value]).click
	sleep 4
	@b.goto(@config[:url] + @config[:birthday])
	birthdays = @b.textareas
	birthdays.each do |birthday|
		birthday.set @config[:wish]
		@b.send_keys :enter
	end
	@b.close
	sleep @config[:day]
end