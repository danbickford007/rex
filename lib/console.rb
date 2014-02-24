require 'colorize'
require 'regex'
require 'strings'
require 'check'
require 'help'

class Console

  attr_accessor :reg_expression, :strings

  def initialize
    @reg_expression =  /./
    @strings = []
  end

  def run
    cont = nil
    print "--------------------------------------------------------------------------------\n"
    while cont = gets.chomp.gsub(/\n/, '').gsub(/\r/, '')
      begin
        next if cont == ''
        exit if cont == 'exit'
        Help.new; next if cont == 'help'
        system "clear"; next if cont == "clear"
        cont, option, *args = cont.split(' ')
        cls_string = cont.capitalize
        cls = eval(cls_string)
        cls = cls.new(self, args)
        cls.send(option)
      rescue => e
        Help.new
        p e
      end
    end
  end

end
