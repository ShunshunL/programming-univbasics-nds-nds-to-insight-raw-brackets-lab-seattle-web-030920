$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  grand_total = 0 
  row_index = 0 
  result = {}
  while row_index < nds.length do
    column_index = 0 
    while column_index < nds[row_index].length do
      grand_total += nds[row_index][:movies][column_index][:worldwide_gross]
      result[nds[row_index][:name]] = "#{grand_total}"
      column_index += 1 
    end
   row_index += 1
  end
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  pp result
end
