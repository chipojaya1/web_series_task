# Start CGI program that receives and returns data
require 'cgi'
cgi = CGI.new
# Receive data and respond in  HTML format
cgi.out("type" => "text/html", "charset" => "UTF-8") {
# Take out the "goya" data used as the information marker with the description cgi['goya'] and assign it to a local variable.
get = cgi['goyapoor']
# Return the response with HTML
"<html>
  <body>
    <p>Information on low quality crops is as follows</p>
    Text string: #{get}
  </body>
</html>"
}
