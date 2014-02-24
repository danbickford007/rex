class Help

  def initialize
    info
  end

  def info
    print "Usage: \n"
    print "_________________________________________________________\n"
    print "regex \n"
    print "\tset myRegex                  -sets your current regex\n"
    print "\tview                         -view current regex\n"

    print "strings\n"
    print "\tadd myString                 -add test string to your list of strings\n"
    print "\tremove myString              -remove test string from list of strings\n"
    print "\tview or show or list         -view your strings\n"
    print "\tclear_all                    -remove all your test strings\n"
  end

end
