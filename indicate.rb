# Start CGI program that receives and returns data
require 'cgi'
cgi = CGI.new
# After receiving the data, return the response in HTML format
cgi.out("type" => "text/html", "charset" => "UTF-8") {
# Retrieve the received data as cgi['input'] and assign it to a local variable
# Retrieve information from the'input' placemark
get = cgi['input']
# Return the response with HTML
"<html>
  <body>
    <p>The received info is as follows</p>
    <p>Text string: #{get}</p>
  </body>
</html>"
}
