require 'colorize'

class Check

  def initialize(console, *args)
    @console = console
    @args = args
  end

  def now
    regex = Regexp.new(@console.reg_expression)
    strings = @console.strings
    print "_______________________MATCHES___________________________\n"
    strings.each do |str|
      match = /#{regex}/.match(str)
      str_array = str.split(match.to_s)
      str_array.shift
      print "#{str.split(match.to_s)[0]}".blue + "#{match.to_s}".red + "#{str_array.join(match.to_s)}".blue + "\n" 
    end
  end

end
