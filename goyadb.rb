# Start CGI program that receives and returns data
require 'cgi'
cgi = CGI.new
#Receive response in HTML format after receiving data
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # Take out the "goya" data used as the information marker with the description cgi['goya'] and assign it to a local variable.
  get = cgi['goyadb']
  #Return the response with HTML
  "<html>
    <body>
      <p>Information of the entire GOYA database of crop sold is as follows</p>
      Info: #{get}
    </body>
  </html>"
}
