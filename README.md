# Happy Birthday FB Script

## Quick Start
* Install Firefox
* Pull down the code to your local computer
* Get ruby setup.  
	* Windows: http://railsinstaller.org/en
	* OSX: http://rvm.io/rvm/install
* `gem install watir-webdriver` 
* Update happy_birthday.rb line 9 & 10 with a valid username and password.
* `ruby happy_birthday.rb` to run the script from terminal or commandline.

## Use Chrome instead of FireFox
* If you want to use chrome for the watir webdriver, you need to download the chromedriver and put it in your PATH.
	* [Download ChromeDriver](http://chromedriver.storage.googleapis.com/index.html) (choose the latest version)
	* Extract it to some directory, e.g., c:\utils\chromedriver
	* Now go put c:\utils\chromedriver in the PATH ('Windows' start : edit environment variables for your account : edit the 'Path' variable and append that directory to it)
	* From command line or terminal issue `chromedriver --version` and verify no errors return.

## Use Phantomjs instead of FireFox ()
* If you want to use phantomjs for the watir webdriver, you need to download the files and put them in your PATH.
	* [Download Phantomjs](http://phantomjs.org/download.html) (choose the appropriate version)
	* Extract it to some directory, e.g., c:\bin\phantomjs\
	* Now go put c:\bin\phantomjs\ in the PATH ('Windows' start : edit environment variables for your account : edit the 'Path' variable and append that directory to it)
	* From command line or terminal issue `phantomjs --version` and verify no errors return.



