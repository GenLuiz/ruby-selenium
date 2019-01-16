# ruby-selenium automation test

how to run the test
download selenium standalone server at https://www.seleniumhq.org/download/

in the same folder put the chrome driver that can be found here http://chromedriver.chromium.org/downloads

in the folder run java -jar selenium-server-standalone -role hub

in another command prompt register the node java -jar selenium-server-standalone -role node -hub localhost:4444/grid/register

in another command prompt run the test you made using 
rspec sample-test.rb

make sure you add the folder, which is located the driver and selenium server, to the PATH 

example
command prompt to add to the PATH
set PATH=%PATH%; C:/selenium-standalone-folder