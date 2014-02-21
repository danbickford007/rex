require 'colorize'
class Console

  def initialize
    @reg_expression =  /./
    @strings = []
  end

  def run
    cont = nil
    print "1 to enter/adjust regex          2 to add/remove test strings          3 to exit\n"
    print "--------------------------------------------------------------------------------\n"
    while cont = gets.chomp.gsub(/\n/, '').gsub(/\r/, '')
      case cont
      when "1" then regex
      when "2" then strings
      else
        exit
      end
      system "clear"
      @strings.each do |str|
        match = /#{@reg_expression}/.match(str)
        match = match.to_s.strip
        first, second = str.split(match)
        p match
        p first
        p second
        print "______________________________________________________________________________\n"
        print "|                                                                            |\n"
        print "| Current Regex: #{@reg_expression}                                                                           \n"
        print "| The string"+ "#{str}".yellow + " has matched with: #{match}                                \n"
        print "| "+"#{first}".blue + "#{match}".red + "#{second}\n".blue
        print "|                                                                            |\n"
        print "|                                                                            |\n"
        print "______________________________________________________________________________\n"
      end
      print "1 to enter/adjust regex          2 to add/remove test strings          3 to exit\n"
      print "--------------------------------------------------------------------------------\n"
    end
  end

  def regex
    print "Current Regex: #{@reg_expression}\n"
    print "Enter new regex: \n"
    @reg_expression = /#{gets.chomp.gsub(/\n/, '').gsub(/\r/, '')}/
  end

  def strings
    print "Current test strings: #{@strings.join(', ')}\n"
    print "To add string, just type your string or use  add: myString\n"
    print "To remove string, use  remove: myString\n"
    str = ""
    response = gets
    if response =~ /r{1}e{1}m{1}o{1}v{1}e{1}\:{1}/
      str = response.split(/r{1}e{1}m{1}o{1}v{1}e{1}\:{1}/)[1]
      @strings.reject!{|s| s == str.chomp.gsub(/\n/, '').gsub(/\r/, '')}
    elsif response =~ /a{1}d{1}d{1}\:{1}/
      str = response.split(/a{1}d{1}d{1}\:{1}/)[1]
      @strings << str.chomp.gsub(/\n/, '').gsub(/\r/, '')
    end
  end
end
