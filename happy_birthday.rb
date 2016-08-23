require 'watir-webdriver'
@config = {
	url: 'http://www.facebook.com', 
	birthday: '/events/birthdays',
	day: 86400,
	wish: 'Wish you a very happy birthday! :)'
}
@account = {
	username: 'put_your_username_here', 
	password: 'put_your_password_here'
}
 
@locator = {
	email_id: 'email',
	password_id: 'pass',
	login_value: 'Log In'
}
 
#Uncomment while true / end / sleep command to have this running on a schedule
#while true
	puts "Hey! I'm posting Happy Birthday for:"
	@b=Watir::Browser.new :firefox  #change firefox to chrome or phantomjs to use different browsers
	@b.driver.manage.window.maximize
	@b.goto(@config[:url])
	@b.text_field(:id => @locator[:email_id]).set @account[:username]
	@b.text_field(:id => @locator[:password_id]).set @account[:password]
	@b.button(:value => @locator[:login_value]).click
	@b.goto(@config[:url] + @config[:birthday])
	
	#Gathers all the peoples names who have birthdays today
	today_bd_div = @b.div(:text => "Today's Birthdays").parent.parent
	today_bd_div.links.each do |link|
		next if link.text.match(/^View/)
		puts link.text
	end

	#Sends the birthday messages
	birthdays = @b.textareas
	birthdays.each do |birthday|
		birthday.set @config[:wish]
		@b.send_keys :enter
	end
	@b.close
	#sleep @config[:day]
#end