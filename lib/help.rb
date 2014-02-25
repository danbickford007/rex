require 'colorize'

class Help

  def initialize
    info
  end

  def info
    print "Usage: \n".red
    print "_________________________________________________________\n".red
    print "regex \n".yellow
    print "\tset or add myRegex           -sets your current regex\n".blue
    print "\tview                         -view current regex\n".blue
    print "\t**only add regex between but not including the starting and ending //\n\n".blue

    print "strings\n".yellow
    print "\tadd myString                 -add test string to your list of strings\n".blue
    print "\tremove myString              -remove test string from list of strings\n".blue
    print "\tview or show or list         -view your strings\n".blue
    print "\tclear_all                    -remove all your test strings\n".blue

    print "\tcheck now                      -run your regex against all test strings\n\n".green
    
    
    print "***EXAMPLES***\n".yellow
    print "\tset regex:         regex set \d\n".blue
    print "\tadd test string:   strings add testString\n".blue
    print "\trun your regex:    check now\n".blue
  end

end
