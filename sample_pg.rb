# Use pg library
require 'pg'
# PG::connect(dbname: "goya"), Connect from ruby to goyaDB
# to store the information that was connected to variable named Connection
connection = PG::connect(dbname: "goya")
connection.internal_encoding = "UTF-8"
begin
  # operate PostgreSQL using connection variable
  # exec、goyaDB direclty with the "select weight, give_for from crops;"
  # execute and store the result from SQL statement
  result = connection.exec("select weight, give_for from crops;")
  # Process each fetched line
  result.each do |record|
      # Get each line and output it on the terminal with puts
      puts "weight of poor crops: #{record["weight"]}　sold by: #{record["give_for"]}."
  end
ensure
  # Finally, close the database connection with .finish
  connection.finish
end
